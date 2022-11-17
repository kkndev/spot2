import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';

var options = BaseOptions(
    baseUrl: dotenv.env['BASE_API_URL'] ?? '',
    connectTimeout: 5000,
    receiveTimeout: 5000,
    headers: {
      'Content-Type': 'application/json',
    });

Dio dio = Dio(options)
  ..interceptors.add(
    QueuedInterceptorsWrapper(
      onRequest: (options, handler) {
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (DioError e, handler) async {
        var BASE_API_URL = dotenv.env['BASE_API_URL'] ?? '';
        var box = await Hive.openBox('tokens');
        final requestOptions123 = e.requestOptions;
        if (e.response?.statusCode == 401) {
          final serviceName = e.response?.data['action']['service_name'];
          if (e.requestOptions.uri.path != '/auth/User/loginToService') {
            try {
              var response = await Dio(options).post(
                '$BASE_API_URL/auth/User/loginToService',
                data: {
                  "token": box.get('masterToken'),
                  "service_name": serviceName,
                },
                options: Options(
                  headers: {
                    "Authorization": null,
                  },
                ),
              );
              if (response.statusCode == 200) {
                final jsonMap = response.data as Map<String, dynamic>;
                final serviceMasterToken = jsonMap['action_result']['data'];
                box.put('${serviceName}MasterToken', serviceMasterToken);
                var headers2 = e.requestOptions.headers;
                headers2["Authorization"] = serviceMasterToken;
                final opts =
                    Options(method: e.requestOptions.method, headers: headers2);
                final cloneReq = await dio.request(
                  e.requestOptions.path,
                  options: opts,
                  data: e.requestOptions.data,
                  queryParameters: e.requestOptions.queryParameters,
                );
                return handler.resolve(cloneReq);
              }
              return handler.next(e);
            } on DioError catch (_) {
              try {
                var response2 = await dio.post(
                  '$BASE_API_URL/auth/User/refreshUserMasterToken',
                  data: {
                    "token": box.get('masterRefreshToken'),
                  },
                  options: Options(
                    headers: {
                      "Authorization": null,
                    },
                  ),
                );
                if (response2.statusCode == 200) {
                  final jsonMap = response2.data as Map<String, dynamic>;
                  final masterToken =
                      jsonMap['action_result']['data']['user_master_token'];
                  final masterRefreshToken = jsonMap['action_result']['data']
                      ['user_master_refresh_token'];
                  box.put('masterToken', masterToken);
                  box.put('masterRefreshToken', masterRefreshToken);
                  var response = await Dio(options).post(
                    '$BASE_API_URL/auth/User/loginToService',
                    data: {
                      "token": masterToken,
                      "service_name": serviceName,
                    },
                    options: Options(
                      headers: {
                        "Authorization": null,
                      },
                    ),
                  );
                  if (response.statusCode == 200) {
                    final jsonMap = response.data as Map<String, dynamic>;
                    final serviceMasterToken = jsonMap['action_result']['data'];

                    box.put('${serviceName}MasterToken', serviceMasterToken);
                    var headers2 = requestOptions123.headers;
                    headers2["Authorization"] = serviceMasterToken;
                    final opts = Options(
                        method: requestOptions123.method, headers: headers2);
                    final cloneReq = await dio.request(
                      requestOptions123.path,
                      options: opts,
                      data: requestOptions123.data,
                      queryParameters: requestOptions123.queryParameters,
                    );

                    return handler.resolve(cloneReq);
                  }
                }
              } on DioError catch (e) {
                return handler.next(e); //continue
              }
              // return handler.next(e);
            }
          } else {
            try {
              var response = await dio.post(
                '$BASE_API_URL/auth/User/refreshUserMasterToken',
                data: {
                  "token": box.get('masterRefreshToken'),
                },
                options: Options(
                  headers: {
                    "Authorization": null,
                  },
                ),
              );
              if (response.statusCode == 200) {
                final jsonMap = response.data as Map<String, dynamic>;
                final masterToken =
                    jsonMap['action_result']['data']['user_master_token'];
                final masterRefreshToken = jsonMap['action_result']['data']
                    ['user_master_refresh_token'];
                box.put('masterToken', masterToken);
                box.put('masterRefreshToken', masterRefreshToken);
                Map<String, dynamic> data2 = e.requestOptions.data;
                data2['token'] = masterToken;
                final opts = Options(
                  method: e.requestOptions.method,
                  headers: {
                    "Authorization": null,
                  },
                );
                final cloneReq = await dio.request(
                  e.requestOptions.path,
                  options: opts,
                  data: data2,
                  queryParameters: e.requestOptions.queryParameters,
                );
                return handler.resolve(cloneReq);
              }
            } on DioError catch (e) {
              return handler.next(e); //continue
            }
          }
        }
        return handler.next(e); //continue
      },
    ),
  );
