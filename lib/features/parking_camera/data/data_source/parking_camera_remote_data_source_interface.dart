abstract class ParkingCameraDataSource {
  Future<String> getImageUrl({
    required String cameraUid,
    required String parkingUid,
  });
}
