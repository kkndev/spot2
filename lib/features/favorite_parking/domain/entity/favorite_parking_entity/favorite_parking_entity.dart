import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_parking_entity.freezed.dart';

@freezed
class FavoriteParkingEntity with _$FavoriteParkingEntity {
  const factory FavoriteParkingEntity({
    required int id,
    required String userUid,
    required int parkingId,
    @Default('favorite_parking_name') String name,
    required bool isFree,
  }) = _FavoriteParkingEntity;
}
