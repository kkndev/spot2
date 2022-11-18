import 'package:dio/dio.dart';

import '../models/models.dart';
import 'parking_remote_data_source_interface.dart';

class ParkingDataSourceMock implements ParkingDataSource {
  final Dio client;

  ParkingDataSourceMock({required this.client});

  @override
  Future<List<ParkingModel>> getItems({required int userId}) async {
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
        .map((parking) => ParkingModel.fromJson(parking))
        .toList();
  }

  @override
  Future<List<ParkingModel>> getItemsByAddress(
      {required String searchValue}) async {
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
        .map((parking) => ParkingModel.fromJson(parking))
        .toList();
  }

  @override
  Future<ParkingModel> getItem({required int id}) async {
    await Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action": {
        "type": "action",
        "service_name": "spot",
        "model_name": "Parking",
        "action_name": "getItem",
        "parameters": {
          "pagination": [],
          "filter": [],
          "withs": [],
          "order": [],
          "id": 6
        },
        "token":
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0eXBlIjoidXN0IiwiYXV0aF9pbmZvcm1hdGlvbiI6eyJpZCI6Ijg3YWRhZmNmLTM4ZmEtNGUyMi05YWIwLTJmNmM4ZmJmZmVmYyIsImVtYWlsIjoia29rb25zdHlhZGV2QGdtYWlsLmNvbSIsImNyZWF0ZWRfYXQiOiIyMDIyLTExLTAyVDE3OjE5OjI0LjAwMDAwMFoiLCJ1cGRhdGVkX2F0IjoiMjAyMi0xMS0xNlQxNzowMTo0OC4wMDAwMDBaIiwiaXNfY29tcGxldGVkIjp0cnVlLCJwaG9uZSI6bnVsbCwic29jaWFsIjpudWxsLCJpZF9pbl9zb2NpYWwiOm51bGwsImVtYWlsX2Zyb21fc29jaWFsIjpudWxsLCJsYXN0X2xvZ2luIjoiMjAyMi0xMS0xNiAxNzowMTo0OCIsImlzX3ByZW1pdW0iOmZhbHNlLCJhdXRoX2lkZW50aWZpY2F0aW9uIjoiODdhZGFmY2YtMzhmYS00ZTIyLTlhYjAtMmY2YzhmYmZmZWZjIiwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W119LCJhbGl2ZV91bnRpbCI6IjIwMjItMTEtMTZUMTg6MzU6MjAuNzg1NzM3WiJ9.fuD4xIR1RK7KfPps--7p6yxytlB-NuZWyeSekIBblC4",
        "uuid": "861b8c03-6d9e-458c-a0b1-5d1444d9dd33"
      },
      "action_result": {
        "data": {
          "id": 6,
          "parking_uid": "R70_P008",
          "name":
              "\u0410\u043f\u0442\u0435\u043a\u0430 \u0424\u0430\u0440\u043c\u0430\u043a\u043e\u043f\u0435\u0439\u043a\u0430",
          "address":
              "\u0412\u0438\u0442\u0430\u043b\u0438\u044f \u0413\u0440\u0430\u0447\u0451\u0432\u0430 \u0443\u043b\u0438\u0446\u0430 1",
          "latitude": "85.025497436523",
          "longitude": "56.444595336914",
          "free_places_count": 1,
          "occupied_places_count": 39,
          "unknown_places_count": 0
        },
        "type": "action_result",
        "uuid": "8eab121c-b0fc-476b-96f8-c3ad65236da4"
      },
      "action_error": null
    };
    return ParkingModel.fromJson(jsonMap['action_result']['data']);
  }
}
