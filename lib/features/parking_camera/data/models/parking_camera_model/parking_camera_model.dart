import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_camera_model.freezed.dart';
part 'parking_camera_model.g.dart';

@freezed
class ParkingCameraModel with _$ParkingCameraModel {
  const factory ParkingCameraModel({
    required int id,
  }) = _ParkingCameraModel;

  factory ParkingCameraModel.fromJson(Map<String, dynamic> json) =>
      _$ParkingCameraModelFromJson(json);
}
