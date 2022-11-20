import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/exception.dart';
import '../models/models.dart';
import 'free_parking_remote_data_source_interface.dart';

class FreeParkingDataSourceImpl implements FreeParkingDataSource {
  final Dio client;

  final String BASE_API_URL = dotenv.env['BASE_API_URL'] ?? '';

  FreeParkingDataSourceImpl({required this.client});

  @override
  Future<List<FreeParkingModel>> getItems({required int userId}) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('spotMasterToken');
    print(spotToken);
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };

    try {
      final response = await client.post(
        '$BASE_API_URL/spot/FreeParking/getItems',
        data: {
          "filter": [
            ["user_id", "eq", userId]
          ]
        },
      );
      print(response);
      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        box.put(
            'freeParkingId',
            (jsonMap['action_result']['data']['items'] as List)[0]
                ['parking_id']);

        return (jsonMap['action_result']['data']['items'] as List)
            .map((parking) => FreeParkingModel.fromJson(parking))
            .toList();
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
  Future<List<FreeParkingModel>> create({
    required int userId,
    required int parkingId,
  }) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('userSpotToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };

    try {
      final response = await client.post(
        '$BASE_API_URL/spot/FreeParking/create',
        data: {
          "attributes": {
            "user_id": userId,
            "parking_id": parkingId,
          }
        },
      );

      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        return [FreeParkingModel.fromJson(jsonMap['action_result']['data'])];
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
  Future<List<FreeParkingModel>> update({
    required int id,
  }) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('userSpotToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };

    try {
      final response = await client.post(
        '$BASE_API_URL/spot/FreeParking/update',
        data: {
          "id": id,
          // "attributes": {"parking_id": parkingId}
        },
      );

      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        return (jsonMap['action_result']['data']['items'] as List)
            .map((parking) => FreeParkingModel.fromJson(parking))
            .toList();
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
  Future<String> delete({required int id}) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('userSpotToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };

    try {
      final response = await client.post(
        '$BASE_API_URL/spot/FreeParking/delete/',
        data: {"id": id},
      );

      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        return jsonMap['action_result']['data']['message'];
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
