import 'package:dio/dio.dart';

var options = BaseOptions(
    baseUrl: 'https://tt-test.nk-soft.com',
    connectTimeout: 5000,
    receiveTimeout: 5000,
    headers: {
      'Authorization': 'Bearer 9b09e8f78f16a04107546336be9bab6e',
      'Content-Type': 'application/json',
    });

Dio dio = Dio(options);
