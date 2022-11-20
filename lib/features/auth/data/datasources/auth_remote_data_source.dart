import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:spot2/features/auth/domain/entities/parking_place_entity.dart';

import '../../../parking/domain/entity/parking_entity/parking_entity.dart';
import '/features/auth/domain/entities/user_tokens.dart';
import '/core/data/dto/error/exception.dart';

abstract class AuthRemoteDataSource {
  Future<String> getCodeByEmail(String email);
  Future<String> getCodeByPhone(String phone);
  Future<UserTokens> sendCodeFromPhone(String phone, String code);
  Future<UserTokens> sendCodeFromEmail(String email, String code);
  Future<List<ParkingEntity>> getParkingItems(String code);
  Future<List<ParkingPlaceEntity>> getParkingPlaces(String code, int id);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  var BASE_API_URL = 'https://api.spot-parking-develop.sputnikfund.ru';
  var BASE_SOCKET_URL =
      'wss://api.spot-parking-develop.sputnikfund.ru/connection/websocket';
  final Dio client;

  AuthRemoteDataSourceImpl({required this.client});

  @override
  Future<String> getCodeByEmail(String email) async {
    final response = await client.post(
      '$BASE_API_URL/auth/User/getCode',
      data: {
        "attributes": {"email": email}
      },
    );
    if (response.statusCode == 200) {
      print(response);
      final persons = response.data;
      return 'response.data';
    } else {
      throw ServerException();
    }
  }

  @override
  Future<String> getCodeByPhone(String phone) async {
    final response = await client.post(
      '$BASE_API_URL/auth/User/getCode',
      data: {
        "attributes": {"phone": phone}
      },
    );
    if (response.statusCode == 200) {
      print(response);
      final persons = response.data;
      return 'response.data';
    } else {
      throw ServerException();
    }
  }

  @override
  Future<UserTokens> sendCodeFromPhone(String phone, String code) async {
    final response = await client.post(
      '$BASE_API_URL/auth/User/loginByCode',
      data: {
        "attributes": {"phone": phone, "code": code}
      },
    );
    if (response.statusCode == 200) {
      final persons = response.data as Map<String, dynamic>;
      var data = persons['action_result']['data'];
      final response2 = await client.post(
        '$BASE_API_URL/auth/User/loginToService',
        data: {"token": data['user_master_token'], "service_name": "spot"},
      );
      final persons2 = response2.data as Map<String, dynamic>;

      var data2 = persons2['action_result']['data'];
      print(data2);

      return UserTokens(
        userMasterToken: data['user_master_token'],
        userMasterRefreshToken: data['user_master_refresh_token'],
        userSpotToken: data2,
      );
    } else {
      throw ServerException();
    }
  }

  @override
  Future<UserTokens> sendCodeFromEmail(String email, String code) async {
    final response = await client.post(
      '$BASE_API_URL/auth/User/loginByCode',
      data: {
        "attributes": {"email": email, "code": code}
      },
    );
    if (response.statusCode == 200) {
      final persons = response.data as Map<String, dynamic>;
      var data = persons['action_result']['data'];
      final response2 = await client.post(
        '$BASE_API_URL/auth/User/loginToService',
        data: {"token": data['user_master_token'], "service_name": "spot"},
      );
      final persons2 = response2.data as Map<String, dynamic>;

      var data2 = persons2['action_result']['data'];
      var box = await Hive.openBox('tokens');

      box.put('userMasterToken', data['user_master_token']);
      box.put('userMasterRefreshToken', data['user_master_refresh_token']);
      box.put('spotMasterToken', data2);
      return UserTokens(
          userMasterToken: data['user_master_token'],
          userMasterRefreshToken: data['user_master_refresh_token'],
          userSpotToken: data2);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ParkingEntity>> getParkingItems(String code) async {
    client.options.headers = {
      'Authorization': '$code',
      'Content-Type': 'application/json',
    };
    final response =
        await client.post('$BASE_API_URL/spot/Parking/getItems', data: {
      "pagination": {"per_page": 100, "page": 1},
      "filter": [
        [
          ["parking", "available", true]
        ]
      ],
      "withs": [],
      "order": [
        {"column": "created_at", "direction": "desc"}
      ],
      "id": ""
    });
    if (response.statusCode == 200) {
      print(response);
      final persons = response.data as Map<String, dynamic>;
      // final persons = {"action":{"type":"action","service_name":"spot","model_name":"Parking","action_name":"getItems","parameters":{"pagination":{"per_page":100,"page":1},"filter":[[["longitude","le",56.456468607947784],"AND",["longitude","ge",56.453723642439655],"AND",["latitude","le",84.98712907546411],"AND",["latitude","ge",84.98483310457414],"AND",["parking","available",true]]],"withs":[],"order":[{"column":"created_at","direction":"desc"}],"id":""},"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0eXBlIjoidXN0IiwiYXV0aF9pbmZvcm1hdGlvbiI6eyJpZCI6ImU4YjM0MmZiLTBjZWUtNDVmYi04ZGQwLTEwYjc4NjA3M2I3OCIsImVtYWlsIjoia29rb25zdHlhZGV2QGdtYWlsLmNvbSIsImNyZWF0ZWRfYXQiOiIyMDIyLTEwLTA1VDAyOjE5OjI5LjAwMDAwMFoiLCJ1cGRhdGVkX2F0IjoiMjAyMi0xMS0wMlQxOToyNzozMy4wMDAwMDBaIiwiaXNfY29tcGxldGVkIjp0cnVlLCJwaG9uZSI6bnVsbCwic29jaWFsIjpudWxsLCJpZF9pbl9zb2NpYWwiOm51bGwsImVtYWlsX2Zyb21fc29jaWFsIjpudWxsLCJsYXN0X2xvZ2luIjoiMjAyMi0xMS0wMiAxOToyNzozMyIsImlzX3ByZW1pdW0iOmZhbHNlLCJhdXRoX2lkZW50aWZpY2F0aW9uIjoiZThiMzQyZmItMGNlZS00NWZiLThkZDAtMTBiNzg2MDczYjc4Iiwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W119LCJhbGl2ZV91bnRpbCI6IjIwMjItMTEtMDJUMTk6MzU6NTIuOTAxNDc2WiJ9.uLo_rv6XO_vV40dRvHn-8w_Le48NHym1JNCiAd-UMIc","uuid":"e37d99dc-2240-4e6b-a8e5-d9f1abfbd873"},"action_result":{"data":{"current_page":1,"total_count":4,"per_page":100,"items":[{"id":44,"parking_uid":"R70_P039","name":"\u0422\u043e\u0440\u0435\u0446 \u0434\u043e\u043c\u0430","address":"\u041d\u0435\u0444\u0442\u044f\u043d\u0430\u044f \u0443\u043b\u0438\u0446\u0430 11","latitude":"84.98598109","longitude":"56.45509615","free_places_count":4,"occupied_places_count":14,"unknown_places_count":0},{"id":4,"parking_uid":"R70_P005","name":"\u0414\u0432\u043e\u0440","address":"\u041d\u0435\u0444\u0442\u044f\u043d\u0430\u044f \u0443\u043b\u0438\u0446\u0430 11","latitude":"84.985544928562","longitude":"56.454554939286","free_places_count":0,"occupied_places_count":23,"unknown_places_count":0,"favorite_name":"Qw"},{"id":5,"parking_uid":"R70_P006","name":"\u0414\u0432\u043e\u0440","address":"\u041d\u0435\u0444\u0442\u044f\u043d\u0430\u044f \u0443\u043b\u0438\u0446\u0430 13","latitude":"84.986222708399","longitude":"56.454310395449","free_places_count":1,"occupied_places_count":51,"unknown_places_count":0},{"id":3,"parking_uid":"R70_P004","name":"\u0414\u0432\u043e\u0440","address":"\u041d\u0435\u0444\u0442\u044f\u043d\u0430\u044f \u0443\u043b\u0438\u0446\u0430 11","latitude":"84.985205267585","longitude":"56.454684365547","free_places_count":0,"occupied_places_count":64,"unknown_places_count":0}]},"type":"action_result","uuid":"6a4f20ba-ad17-41a6-89a7-9aedb205882f"},"action_error":null} as Map<String, dynamic>;
      var data = persons['action_result']['data']['items'] as List<dynamic>;
      return data
          .map(
            (e) => ParkingEntity(
              id: e['id'],
              address: e['address'],
              favoriteName: e['favorite_name'] ?? '',
              freePlacesCount: e['free_places_count'],
              occupiedPlacesCount: e['occupied_places_count'],
              unknownPlacesCount: e['unknown_places_count'],
              latitude: double.parse(e['longitude']),
              longitude: double.parse(e['latitude']),
              name: e['name'],
              parkingUid: e['parking_uid'],
            ),
          )
          .toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ParkingPlaceEntity>> getParkingPlaces(String code, int id) async {
    var box = await Hive.openBox('tokens');
    client.options.headers = {
      'Authorization': box.get('userSpotToken'),
      'Content-Type': 'application/json',
    };
    final response =
        await client.post('$BASE_API_URL/spot/Parking/getItem', data: {
      "pagination": {},
      "filter": [],
      "withs": ["parking_places", "cameras"],
      "order": [],
      "id": id
    });
    if (response.statusCode == 200) {
      final persons = response.data as Map<String, dynamic>;
      var data =
          persons['action_result']['data']['parking_places'] as List<dynamic>;

      return data
          .map(
            (e) => ParkingPlaceEntity(
              id: e['id'],
              parkingPlaceUid: e['parking_place_uid'],
              parkingId: e['parking_id'],
              cameraId: e['camera_id'],
              latitude: double.parse(e['latitude']),
              longitude: double.parse(e['longitude']),
              angle: double.parse(e['angle']),
              status: e['status'],
            ),
          )
          .toList();
    } else {
      throw ServerException();
    }
  }
}
