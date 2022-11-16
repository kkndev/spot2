import 'package:dio/dio.dart';

import '../models/models.dart';
import 'free_parking_remote_data_source_interface.dart';

class FreeParkingDataSourceMock implements FreeParkingDataSource {
  final Dio client;

  FreeParkingDataSourceMock({required this.client});

  @override
  Future<List<FreeParkingModel>> getItems({required int userId}) async {
    await Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {
        "data": {
          "items": [
            {
              "id": 1,
              "user_id": 609,
              "parking_id": 1,
              "created_at": "2021-12-14T05:32:28.000000Z",
              "updated_at": "2021-12-14T05:32:28.000000Z"
            },
          ]
        }
      }
    };
    return (jsonMap['action_result']['data']['items'] as List)
        .map((parking) => FreeParkingModel.fromJson(parking))
        .toList();
  }

  @override
  Future<List<FreeParkingModel>> create({
    required int userId,
    required int parkingId,
  }) async {
    await Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {
        "data": {
          "items": [
            {
              "id": 1,
              "user_id": userId,
              "parking_id": parkingId,
              "created_at": "2021-12-14T05:32:28.000000Z",
              "updated_at": "2021-12-14T05:32:28.000000Z"
            },
          ]
        }
      }
    };
    return (jsonMap['action_result']!['data']!['items'] as List)
        .map((parking) => FreeParkingModel.fromJson(parking))
        .toList();
  }

  @override
  Future<List<FreeParkingModel>> update({
    required int id,
  }) async {
    await Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {
        "data": {
          "items": [
            {
              "id": id,
              "user_id": 609,
              "parking_id": 1,
              "created_at": "2021-12-14T05:32:28.000000Z",
              "updated_at": "2021-12-14T05:32:28.000000Z"
            },
          ]
        }
      }
    };
    return (jsonMap['action_result']['data']['items'] as List)
        .map((parking) => FreeParkingModel.fromJson(parking))
        .toList();
  }

  @override
  Future<String> delete({
    required int id,
  }) async {
    await Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {
        "data": {"message": "Entity deleted!"}
      }
    };
    return jsonMap['action_result']['data']['message'];
  }
}
