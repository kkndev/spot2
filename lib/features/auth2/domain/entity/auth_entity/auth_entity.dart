import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_entity.freezed.dart';

@freezed
class AuthEntity with _$AuthEntity {
  const factory AuthEntity({
    required int id,
    required int userId,
    required int parkingId,
  }) = _AuthEntity;
}
