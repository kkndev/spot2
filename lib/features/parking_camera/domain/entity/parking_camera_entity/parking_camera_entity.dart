import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_camera_entity.freezed.dart';

@freezed
class ParkingCameraEntity with _$ParkingCameraEntity {
  const factory ParkingCameraEntity({
    required int id,
  }) = _ParkingCameraEntity;
}
