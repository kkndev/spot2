import 'package:dio/dio.dart';

import '../models/models.dart';
import 'user_remote_data_source_interface.dart';

class UserRemoteDataSourceMock implements UserRemoteDataSource {
  final Dio client;

  UserRemoteDataSourceMock({required this.client});

  @override
  Future<String> activatePromoCode({
    required String promoCode,
  }) async {
    await Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {
        "data": {"message": "Entity deleted!"}
      }
    };
    return jsonMap['action_result']['data']['message'];
  }

  @override
  Future<UserModel> getUser({
    required int id,
  }) async {
    await Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {
        "data": {"message": "Entity deleted!"}
      }
    };
    return UserModel.fromJson(jsonMap['action_result']['data']['message']);
  }

  @override
  Future<UserModel> updateUser({
    required String name,
    required String deviceToken,
  }) async {
    await Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {
        "data": {"message": "Entity deleted!"}
      }
    };
    return UserModel.fromJson(jsonMap['action_result']['data']['message']);
  }

  @override
  Future<UserInfoModel> whoami() async {
    await Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {
        "data": {"message": "Entity deleted!"}
      }
    };
    return UserInfoModel.fromJson(jsonMap['action_result']['data']);
  }

  @override
  Future<String> getMinAppVersion() async {
    await Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {
        "data": {"message": "Entity deleted!"}
      }
    };
    return jsonMap['action_result']['data'];
  }
}
