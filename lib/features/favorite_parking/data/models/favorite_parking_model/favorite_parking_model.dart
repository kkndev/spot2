import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_parking_model.freezed.dart';
part 'favorite_parking_model.g.dart';

@freezed
class FavoriteParkingModel with _$FavoriteParkingModel {
  const factory FavoriteParkingModel({
    required int id,
    @JsonKey(name: 'user_uid') required String userUid,
    @JsonKey(name: 'parking_id') required int parkingId,
    @Default('favorite_parking_name') String name,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @Default(false) @JsonKey(name: 'is_free') bool isFree,
  }) = _FavoriteParkingModel;

  factory FavoriteParkingModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteParkingModelFromJson(json);
}
