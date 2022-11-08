import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:spot2/features/user/domain/entities/entities.dart';

import '/core/data/dto/error/exception.dart';

abstract class UserRemoteDataSource {
  Future<UserEntity> getUser(String id);
  Future<String> activatePromoCode(String promoCode);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  var BASE_API_URL = 'https://api.spot-parking-develop.sputnikfund.ru';
  var BASE_SOCKET_URL =
      'wss://api.spot-parking-develop.sputnikfund.ru/connection/websocket';

  final Dio client;

  UserRemoteDataSourceImpl({required this.client});

  @override
  Future<UserEntity> getUser(String id) async {
    final response = await client.post(
      '$BASE_API_URL/auth/User/getCode',
      data: {
        "attributes": {"id": id}
      },
    );
    if (response.statusCode == 200) {
      final persons = response.data;
      return UserEntity(id: 'id');
    } else {
      throw ServerException();
    }
  }

  @override
  Future<String> activatePromoCode(String promoCode) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('userSpotToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };
    try {
      final response = await client.post(
        '$BASE_API_URL/spot/PromoCode/activate',
        data: {
          "attributes": {"code": promoCode}
        },
      );
      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        return jsonMap['action_result']['data']['message'];
      }
    } on DioError catch (e) {
      final jsonMap = e.response?.data as Map<String, dynamic>;
      return jsonMap['action_error']['message'];
    } catch (_) {
      throw ServerException();
    }
    return '';
  }
}
