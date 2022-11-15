import 'package:dio/dio.dart';

import '../models/models.dart';
import 'favorite_parking_remote_data_source_interface.dart';

class FavoriteParkingDataSourceMock implements FavoriteParkingDataSource {
  final Dio client;

  FavoriteParkingDataSourceMock({required this.client});

  @override
  Future<List<FavoriteParkingModel>> getItems({required String userUid}) async {
    Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {
        "data": {
          "items": [
            {
              "id": 1,
              "user_uid": "eb41a446-1b72-444b-aff2-c7e11a66b44a",
              "parking_id": 1,
              "name": "выбранное пользователем название",
              "created_at": "2021-12-14T05:32:28.000000Z",
              "updated_at": "2021-12-14T05:32:28.000000Z"
            },
            {
              "id": 2,
              "user_uid": "eb41a446-1b72-444b-aff2-c7e11a66b44a",
              "parking_id": 2,
              "name": "выбранное пользователем название",
              "created_at": "2021-12-14T05:32:50.000000Z",
              "updated_at": "2021-12-14T05:32:50.000000Z"
            }
          ]
        }
      }
    };
    return (jsonMap['action_result']['data']['items'] as List)
        .map((parking) => FavoriteParkingModel.fromJson(parking))
        .toList();
  }

  @override
  Future<List<FavoriteParkingModel>> create(
      {required String userUid,
      required int parkingId,
      required String name}) async {
    Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {
        "data": {
          "items": [
            {
              "id": 1,
              "user_uid": userUid,
              "parking_id": parkingId,
              "name": name,
              "created_at": "2021-12-14T05:32:28.000000Z",
              "updated_at": "2021-12-14T05:32:28.000000Z"
            },
          ]
        }
      }
    };
    return (jsonMap['action_result']!['data']!['items'] as List)
        .map((parking) => FavoriteParkingModel.fromJson(parking))
        .toList();
  }

  @override
  Future<List<FavoriteParkingModel>> update({
    required int id,
    required String name,
  }) async {
    Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {
        "data": {
          "items": [
            {
              "id": id,
              "user_uid": "eb41a446-1b72-444b-aff2-c7e11a66b44a",
              "parking_id": 1,
              "name": name,
              "created_at": "2021-12-14T05:32:28.000000Z",
              "updated_at": "2021-12-14T05:32:28.000000Z"
            },
          ]
        }
      }
    };
    return (jsonMap['action_result']['data']['items'] as List)
        .map((parking) => FavoriteParkingModel.fromJson(parking))
        .toList();
  }

  @override
  Future<String> delete({
    required int id,
  }) async {
    Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {
        "data": {"message": "Entity deleted!"}
      }
    };
    return jsonMap['action_result']['data']['message'];
  }
}
