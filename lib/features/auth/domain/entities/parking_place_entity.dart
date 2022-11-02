import 'package:equatable/equatable.dart';

class ParkingPlaceEntity extends Equatable {
  final int id;
  final String parkingPlaceUid;
  final int parkingId;
  final int cameraId;
  final double latitude;
  final double longitude;
  final int angle;
  final String status;

  const ParkingPlaceEntity({
    required this.id,
    required this.parkingPlaceUid,
    required this.parkingId,
    required this.cameraId,
    required this.latitude,
    required this.longitude,
    required this.angle,
    required this.status,
  });

  @override
  List<Object?> get props => [
        id,
        parkingPlaceUid,
        parkingId,
        cameraId,
        latitude,
        longitude,
        angle,
        status,
      ];
}
