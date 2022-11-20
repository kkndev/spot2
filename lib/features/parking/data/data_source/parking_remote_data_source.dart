import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/exception.dart';
import '../models/models.dart';
import '../models/parking_item_model/parking_item_model.dart';
import 'parking_remote_data_source_interface.dart';

class ParkingDataSourceImpl implements ParkingDataSource {
  final Dio client;

  final String BASE_API_URL = dotenv.env['BASE_API_URL'] ?? '';

  ParkingDataSourceImpl({required this.client});

  @override
  Future<List<ParkingModel>> getItems() async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('userSpotToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };

    try {
      final response = await client.post(
        '$BASE_API_URL/spot/Parking/getItems',
        data: {},
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
  Future<List<ParkingModel>> getItemsByAddress(
      {required String searchValue}) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('userSpotToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };

    try {
      final response = await client.post(
        '$BASE_API_URL/spot/Parking/getItemsByAddress',
        data: {
          "attributes": {
            "input": searchValue,
          }
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
  Future<ParkingItemModel> getItem({required int id}) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('userSpotToken');
    var freeParkingId = box.get('freeParkingId');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };

    try {
      final response = await client.post(
        '$BASE_API_URL/spot/Parking/getItem',
        data: {
          "id": freeParkingId,
          "withs": [
            "parking_places",
            "cameras",
          ]
        },
      );

      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        return ParkingItemModel.fromJson(jsonMap['action_result']['data']);
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
