import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

import '../../../../core/data/dto/error/exception.dart';
import '../models/models.dart';
import 'favorite_parking_remote_data_source_interface.dart';

class FavoriteParkingDataSourceImpl implements FavoriteParkingDataSource {
  var BASE_API_URL = 'https://api.spot-parking-develop.sputnikfund.ru';

  final Dio client;

  FavoriteParkingDataSourceImpl({required this.client});

  @override
  Future<List<FavoriteParkingModel>> getItems({required String userUid}) async {
    var box = await Hive.openBox('tokens');
    var spotToken = box.get('userSpotToken');
    client.options.headers = {
      'Authorization': '$spotToken',
      'Content-Type': 'application/json',
    };

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
    } else {
      throw ServerException();
    }
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
