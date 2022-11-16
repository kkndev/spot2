import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/exception.dart';
import '../models/models.dart';
import 'favorite_parking_remote_data_source_interface.dart';

class FavoriteParkingDataSourceImpl implements FavoriteParkingDataSource {
  final Dio client;

  final String BASE_API_URL = dotenv.env['BASE_API_URL'] ?? '';

  FavoriteParkingDataSourceImpl({required this.client});

  @override
  Future<List<FavoriteParkingModel>> getItems({required String userUid}) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('userSpotToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };

    try {
      final response = await client.post(
        '$BASE_API_URL/spot/FavoriteParking/getItems',
        data: {
          "filter": [
            ["user_uid", "eq", userUid]
          ]
        },
      );

      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        return (jsonMap['action_result']['data']['items'] as List)
            .map((parking) => FavoriteParkingModel.fromJson(parking))
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
  Future<List<FavoriteParkingModel>> create(
      {required String userUid,
      required int parkingId,
      required String name}) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('userSpotToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };

    final response = await client.post(
      '$BASE_API_URL/spot/FavoriteParking/create',
      data: {
        "attributes": {
          "user_uid": userUid,
          "parking_id": parkingId,
          "name": name,
        }
      },
    );

    if (response.statusCode == 200) {
      final jsonMap = response.data as Map<String, dynamic>;
      return (jsonMap['action_result']['data']['items'] as List)
          .map((parking) => FavoriteParkingModel.fromJson(parking))
          .toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<FavoriteParkingModel>> update(
      {required int id, required String name}) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('userSpotToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };

    final response = await client.post(
      '$BASE_API_URL/spot/FavoriteParking/update',
      data: {
        "id": id,
        "attributes": {"name": name}
      },
    );

    if (response.statusCode == 200) {
      final jsonMap = response.data as Map<String, dynamic>;
      return (jsonMap['action_result']['data']['items'] as List)
          .map((parking) => FavoriteParkingModel.fromJson(parking))
          .toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<String> delete({required int id}) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('userSpotToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };

    final response = await client.post(
      '$BASE_API_URL/spot/FavoriteParking/delete',
      data: {"id": id},
    );

    if (response.statusCode == 200) {
      final jsonMap = response.data as Map<String, dynamic>;
      return jsonMap['action_result']['data']['message'];
    } else {
      throw ServerException();
    }
  }
}
