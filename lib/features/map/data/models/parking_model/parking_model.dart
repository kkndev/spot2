import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_model.freezed.dart';
part 'parking_model.g.dart';

@freezed
class ParkingModel with _$ParkingModel {
  const factory ParkingModel({
    required int val,
    required String cur,
  }) = _ParkingModel;

  factory ParkingModel.fromJson(Map<String, dynamic> json) =>
      _$ParkingModelFromJson(json);
}
