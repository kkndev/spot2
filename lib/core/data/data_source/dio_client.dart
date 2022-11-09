import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

var options = BaseOptions(
    baseUrl: 'https://tt-test.nk-soft.com',
    connectTimeout: 5000,
    receiveTimeout: 5000,
    headers: {
      // 'Authorization': 'Bearer 9b09e8f78f16a04107546336be9bab6e',
      'Content-Type': 'application/json',
    });

Dio dio = Dio(options)
  ..interceptors.add(
    QueuedInterceptorsWrapper(
      onRequest: (options, handler) {
        // Do something before request is sent
        return handler.next(options); //continue
        // If you want to resolve the request with some custom data，
        // you can resolve a `Response` object eg: `handler.resolve(response)`.
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg: `handler.reject(dioError)`
      },
      onResponse: (response, handler) {
        print('response');

        // Do something with response data
        return handler.next(response); // continue
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg: `handler.reject(dioError)`
      },
      onError: (DioError e, handler) async {
        var BASE_API_URL = 'https://api.spot-parking-develop.sputnikfund.ru';

        if (e.response?.statusCode == 401) {
          var box = await Hive.openBox('tokens');
          var userMasterToken = box.get('userMasterToken');
          if (e.requestOptions.uri.path != '/auth/User/loginToService') {
            try {
              Dio dio = Dio(options)..options.headers = {
                'Authorization': false,
                'Content-Type': 'application/json',
              }
                ..interceptors.add(
                  QueuedInterceptorsWrapper(
                    onError: (DioError e, handler) async {
                      if (e.response?.statusCode == 401) {
                        var userMasterRefreshToken =
                            box.get('userMasterRefreshToken');
                        try {
                          Dio dio = Dio(options)..options.headers = {
                            'Authorization': false,
                            'Content-Type': 'application/json',
                          };

                          var response = await dio.post(
                            '$BASE_API_URL/auth/User/login',
                            data: {
                              "token": userMasterRefreshToken,
                              "service_name": "auth"
                            },
                          );
                          print(response.data);
                        } on DioError catch (e) {
                          if (e.response?.statusCode == 401) {
                            print(e.requestOptions.uri.path);

                            print(e.response?.data['action_error']);
                            print(userMasterRefreshToken);
                          }
                        }
                      }

                      return handler.next(e); //continue
                    },
                  ),
                );
              var response = await dio.post(
                '$BASE_API_URL/auth/User/loginToService',
                data: {"token": userMasterToken, "service_name": "spot"},
              );
              print(response.data);
            } on DioError catch (e) {
              print(e.response);
            }
          }
          // print(e.requestOptions.uri.path);
        }
        print('error');
        // Do something with response error
        return handler.next(e); //continue
        // If you want to resolve the request with some custom data，
        // you can resolve a `Response` object eg: `handler.resolve(response)`.
      },
    ),
  );
