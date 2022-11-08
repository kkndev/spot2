import 'package:dio/dio.dart';
import 'package:spot2/features/user/domain/entities/entities.dart';

import '/core/data/dto/error/exception.dart';

abstract class UserRemoteDataSource {
  Future<UserEntity> getUser(String id);
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
}
