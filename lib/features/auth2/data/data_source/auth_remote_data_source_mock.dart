import 'package:dio/dio.dart';

import 'auth_remote_data_source_interface.dart';

class AuthDataSourceMock implements AuthDataSource {
  final Dio client;

  AuthDataSourceMock({required this.client});

  @override
  Future<String> refreshUserMasterToken({required int id}) async {
    await Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {"data": ''}
    };
    return jsonMap['action_result']['data'];
  }

  @override
  Future<String> loginToService({required String serviceName}) async {
    await Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {"data": ''}
    };
    return jsonMap['action_result']['data'];
  }
}
