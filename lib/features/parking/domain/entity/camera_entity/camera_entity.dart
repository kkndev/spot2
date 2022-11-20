import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera_entity.freezed.dart';

@freezed
class CameraEntity with _$CameraEntity {
  const factory CameraEntity({
    required int id,
    @JsonKey(name: 'camera_uid') required String cameraUid,
  }) = _CameraEntity;
}
