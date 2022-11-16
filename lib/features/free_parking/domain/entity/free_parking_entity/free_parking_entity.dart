import 'package:freezed_annotation/freezed_annotation.dart';

part 'free_parking_entity.freezed.dart';

@freezed
class FreeParkingEntity with _$FreeParkingEntity {
  const factory FreeParkingEntity({
    required int id,
    required int userId,
    required int parkingId,
  }) = _FreeParkingEntity;
}
