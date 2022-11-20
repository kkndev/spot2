import 'package:dio/dio.dart';

import '/core/data/dto/error/exception.dart';

abstract class MapRemoteDataSource {
  Future<String> getCodeByEmail(String email);
  Future<String> getCodeByPhone(String phone);
}

class MapRemoteDataSourceImpl implements MapRemoteDataSource {
  var BASE_API_URL = 'https://api.spot-parking-develop.sputnikfund.ru';
  var BASE_SOCKET_URL =
      'wss://api.spot-parking-develop.sputnikfund.ru/connection/websocket';
  final Dio client;

  MapRemoteDataSourceImpl({required this.client});

  @override
  Future<String> getCodeByEmail(String email) async {
    final response = await client.post(
      '$BASE_API_URL/auth/User/getCode',
      data: {
        "attributes": {"email": email}
      },
    );
    if (response.statusCode == 200) {
      print(response);
      final persons = response.data;
      return 'response.data';
    } else {
      throw ServerException();
    }
  }

  @override
  Future<String> getCodeByPhone(String phone) async {
    final response = await client.post(
      '$BASE_API_URL/auth/User/getCode',
      data: {
        "attributes": {"phone": phone}
      },
    );
    if (response.statusCode == 200) {
      print(response);
      final persons = response.data;
      return 'response.data';
    } else {
      throw ServerException();
    }
  }
}
