import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/exception.dart';
import '../models/models.dart';
import 'user_remote_data_source_interface.dart';

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio client;

  final String BASE_API_URL = dotenv.env['BASE_API_URL'] ?? '';

  UserRemoteDataSourceImpl({required this.client});

  @override
  Future<String> activatePromoCode({required String promoCode}) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('spotMasterToken');
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
      print(e.response?.data);

      if (e.type == DioErrorType.response) {
        final jsonMap = e.response?.data as Map<String, dynamic>;
        throw UserException(
            code: jsonMap['action_error']['code'],
            message: jsonMap['action_error']['message']);
      }
      throw ServerException();
    }
    throw ServerException();
  }

  @override
  Future<UserModel> getUser({required int id}) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('spotMasterToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };
    try {
      final response = await client.post(
        '$BASE_API_URL/spot/User/getItem',
        data: {
          "id": id,
        },
      );
      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        return UserModel.fromJson(jsonMap['action_result']['data']);
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        final jsonMap = e.response?.data as Map<String, dynamic>;
        throw UserException(
            code: jsonMap['action_error']['code'],
            message: jsonMap['action_error']['message']);
      }
      throw ServerException();
    }
    throw ServerException();
  }

  @override
  Future<UserModel> updateUser({
    required String name,
    required String deviceToken,
  }) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('spotMasterToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };
    try {
      final response = await client.post(
        '$BASE_API_URL/spot/User/update',
        data: {
          "attributes": {
            "id": 609,
            "name": name,
            "device_token": deviceToken,
          }
        },
      );
      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        return UserModel.fromJson(jsonMap['action_result']['data']);
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        final jsonMap = e.response?.data as Map<String, dynamic>;
        throw UserException(
            code: jsonMap['action_error']['code'],
            message: jsonMap['action_error']['message']);
      }
      throw ServerException();
    }
    throw ServerException();
  }

  @override
  Future<UserInfoModel> whoami() async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('spotMasterToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };
    try {
      final response = await client.post(
        '$BASE_API_URL/spot/User/whoami',
        data: {},
      );
      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        return UserInfoModel.fromJson(jsonMap['action_result']['data']);
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        final jsonMap = e.response?.data as Map<String, dynamic>;
        throw UserException(
            code: jsonMap['action_error']['code'],
            message: jsonMap['action_error']['message']);
      }
      throw ServerException();
    }
    throw ServerException();
  }

  @override
  Future<String> getMinAppVersion() async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('spotMasterToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };
    try {
      final response = await client.post(
        '$BASE_API_URL/spot/User/getAppMinVersion',
        data: {},
      );
      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        return jsonMap['action_result']['data'];
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        final jsonMap = e.response?.data as Map<String, dynamic>;
        throw UserException(
            code: jsonMap['action_error']['code'],
            message: jsonMap['action_error']['message']);
      }
      throw ServerException();
    }
    throw ServerException();
  }
}
