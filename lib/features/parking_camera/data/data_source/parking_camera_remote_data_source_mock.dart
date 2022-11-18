import 'package:dio/dio.dart';

import 'parking_camera_remote_data_source_interface.dart';

class ParkingCameraDataSourceMock implements ParkingCameraDataSource {
  final Dio client;

  ParkingCameraDataSourceMock({required this.client});

  @override
  Future<String> getImageUrl({
    required String cameraUid,
    required String parkingUid,
  }) async {
    await Future.delayed(const Duration(seconds: 3));
    final Map<String, dynamic> jsonMap = {
      "action_result": {
        "data": {
          "image_src":
              "https://images.spotparking.ru/cameras/fc4faa7a-3b08-45d0-8c17-ec2bc41af52b.jpg"
        }
      }
    };
    return jsonMap['action_result']['data'];
  }
}
