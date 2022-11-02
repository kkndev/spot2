import 'package:dio/dio.dart';

import '/features/auth/domain/entities/user_tokens.dart';
import '/core/data/dto/error/exception.dart';

abstract class AuthRemoteDataSource {
  Future<String> getCodeByEmail(String email);
  Future<String> getCodeByPhone(String phone);
  Future<UserTokens> sendCodeFromPhone(String phone, String code);
  Future<UserTokens> sendCodeFromEmail(String email, String code);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  var BASE_API_URL = 'https://api.spot-parking-develop.sputnikfund.ru';
  var BASE_SOCKET_URL =
      'wss://api.spot-parking-develop.sputnikfund.ru/connection/websocket';
  final Dio client;

  AuthRemoteDataSourceImpl({required this.client});

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

  @override
  Future<UserTokens> sendCodeFromPhone(String phone, String code) async {
    final response = await client.post(
      '$BASE_API_URL/auth/User/loginByCode',
      data: {
        "attributes": {"phone": phone, "code": code}
      },
    );
    if (response.statusCode == 200) {
      final persons = response.data as Map<String, dynamic>;
      var data = persons['action_result']['data'];
      final response2 = await client.post(
        '$BASE_API_URL/auth/User/loginToService',
        data: {"token": data['user_master_token'], "service_name": "spot"},
      );
      final persons2 = response2.data as Map<String, dynamic>;

      var data2 = persons2['action_result']['data'];
      print(data2);

      return UserTokens(
        userMasterToken: data['user_master_token'],
        userMasterRefreshToken: data['user_master_refresh_token'],
        userSpotToken: data2,
      );
    } else {
      throw ServerException();
    }
  }

  @override
  Future<UserTokens> sendCodeFromEmail(String email, String code) async {
    final response = await client.post(
      '$BASE_API_URL/auth/User/loginByCode',
      data: {
        "attributes": {"email": email, "code": code}
      },
    );
    if (response.statusCode == 200) {
      final persons = response.data as Map<String, dynamic>;
      var data = persons['action_result']['data'];
      final response2 = await client.post(
        '$BASE_API_URL/auth/User/loginToService',
        data: {"token": data['user_master_token'], "service_name": "spot"},
      );
      final persons2 = response2.data as Map<String, dynamic>;

      var data2 = persons2['action_result']['data'];
      return UserTokens(
          userMasterToken: data['user_master_token'],
          userMasterRefreshToken: data['user_master_refresh_token'],
          userSpotToken: data2);
    } else {
      throw ServerException();
    }
  }
}
