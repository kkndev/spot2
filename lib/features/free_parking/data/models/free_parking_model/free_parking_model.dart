import 'package:freezed_annotation/freezed_annotation.dart';

part 'free_parking_model.freezed.dart';
part 'free_parking_model.g.dart';

@freezed
class FreeParkingModel with _$FreeParkingModel {
  const factory FreeParkingModel({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'parking_id') required int parkingId,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _FreeParkingModel;

  factory FreeParkingModel.fromJson(Map<String, dynamic> json) =>
      _$FreeParkingModelFromJson(json);
}
