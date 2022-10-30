import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_state.freezed.dart';

@freezed
class UserInfoState with _$UserInfoState {
  factory UserInfoState([
    @Default('') String id,
    @Default('') String name,
    @Default('') String phone,
    @Default('') String birthDate,
    @Default('') String regionId,
    @Default('') String regionName,
    @Default('') String email,
    @Default(false) bool isRegistration,
  ]) = _UserInfoState;
}
