import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/exception.dart';
import 'parking_camera_remote_data_source_interface.dart';

class ParkingCameraDataSourceImpl implements ParkingCameraDataSource {
  final Dio client;

  final String BASE_API_URL = dotenv.env['BASE_API_URL'] ?? '';

  ParkingCameraDataSourceImpl({required this.client});

  @override
  Future<String> getImageUrl({
    required String cameraUid,
    required String parkingUid,
  }) async {
    var box = await Hive.openBox('tokens');
    var imageToken = box.get('imageMasterToken');
    client.options.headers = {
      'Authorization': '$imageToken',
      'Content-Type': 'application/json',
    };

    try {
      final response = await client.post(
        '$BASE_API_URL/image/Camera/getImageByCameraUid',
        data: {
          "attributes": {
            "camera_uid": cameraUid,
            "parking_uid": parkingUid,
          }
        },
      );
      print(response);
      if (response.statusCode == 200) {
        final jsonMap = response.data as Map<String, dynamic>;
        return jsonMap['action_result']['data'];
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
