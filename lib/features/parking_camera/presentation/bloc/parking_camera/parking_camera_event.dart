abstract class ParkingCameraEvent {}

class InitFreeParkingEvent extends ParkingCameraEvent {}

class ResetParkingCamerasEvent extends ParkingCameraEvent {}

class GetParkingCameraEvent extends ParkingCameraEvent {
  GetParkingCameraEvent({
    required this.cameraUid,
    required this.parkingUid,
  });
  final String cameraUid;
  final String parkingUid;
}
