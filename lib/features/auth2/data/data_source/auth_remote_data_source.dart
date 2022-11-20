import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/exception.dart';
import 'auth_remote_data_source_interface.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final Dio client;

  final String BASE_API_URL = dotenv.env['BASE_API_URL'] ?? '';

  AuthDataSourceImpl({required this.client});

  @override
  Future<String> refreshUserMasterToken({required int id}) async {
    var box = await Hive.openBox('tokens');
    try {
      final response = await client.post(
        '$BASE_API_URL/auth/User/refreshUserMasterToken',
        data: {"token": box.get('userMasterRefreshToken')},
      );
      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        final userMasterToken =
            jsonMap['action_result']['data']['user_master_token'];
        final userMasterRefreshToken =
            jsonMap['action_result']['data']['user_master_refresh_token'];
        box.put('userMasterToken', userMasterToken);
        box.put('userMasterRefreshToken', userMasterRefreshToken);
        return userMasterToken;
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        final jsonMap = e.response?.data as Map<String, dynamic>;
        throw UserException(
            code: jsonMap['action_error']['code'],
            message: jsonMap['action_error']['message']);
      }
    } catch (e) {
      throw ServerException();
    }
    throw ServerException();
  }

  @override
  Future<String> loginToService({required String serviceName}) async {
    var box = await Hive.openBox('tokens');
    var userMasterToken = box.get('userMasterToken');
    print(userMasterToken);
    try {
      final response = await client.post(
        '$BASE_API_URL/auth/User/loginToService',
        data: {
          'service_name': serviceName,
          "token": userMasterToken,
        },
      );
      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        final serviceToken = jsonMap['action_result']['data'];
        box.put('${serviceName}MasterToken', serviceToken);
        return serviceToken;
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        final jsonMap = e.response?.data as Map<String, dynamic>;
        throw UserException(
            code: jsonMap['action_error']['code'],
            message: jsonMap['action_error']['message']);
      }
    } catch (e) {
      throw ServerException();
    }
    throw ServerException();
  }
}
