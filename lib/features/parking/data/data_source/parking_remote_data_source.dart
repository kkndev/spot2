import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/exception.dart';
import '../models/models.dart';
import 'parking_remote_data_source_interface.dart';

class ParkingDataSourceImpl implements ParkingDataSource {
  final Dio client;

  final String BASE_API_URL = dotenv.env['BASE_API_URL'] ?? '';

  ParkingDataSourceImpl({required this.client});

  @override
  Future<List<ParkingModel>> getItems({required int userId}) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('userSpotToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };

    try {
      final response = await client.post(
        '$BASE_API_URL/spot/Parking/getItems',
        data: {
          "filter": [
            ["user_id", "eq", userId]
          ]
        },
      );

      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        return (jsonMap['action_result']['data']['items'] as List)
            .map((parking) => ParkingModel.fromJson(parking))
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
  Future<ParkingModel> getItem({required int id}) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('userSpotToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };

    try {
      final response = await client.post(
        '$BASE_API_URL/spot/Parking/getItems',
        data: {"id": id},
      );

      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        return ParkingModel.fromJson(jsonMap['action_result']['data']);
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
  Future<List<ParkingModel>> create({
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
        '$BASE_API_URL/spot/Parking/create',
        data: {
          "attributes": {
            "user_id": userId,
            "parking_id": parkingId,
          }
        },
      );

      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        return [ParkingModel.fromJson(jsonMap['action_result']['data'])];
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
  Future<List<ParkingModel>> update({
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
        '$BASE_API_URL/spot/Parking/update',
        data: {
          "id": id,
          // "attributes": {"parking_id": parkingId}
        },
      );

      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        return (jsonMap['action_result']['data']['items'] as List)
            .map((parking) => ParkingModel.fromJson(parking))
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
        '$BASE_API_URL/spot/Parking/delete/',
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
