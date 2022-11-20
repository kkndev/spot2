import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera_model.freezed.dart';
part 'camera_model.g.dart';

@freezed
class CameraModel with _$CameraModel {
  const factory CameraModel({
    required int id,
    @JsonKey(name: 'camera_uid') required String cameraUid,
  }) = _CameraModel;

  factory CameraModel.fromJson(Map<String, dynamic> json) =>
      _$CameraModelFromJson(json);
}
