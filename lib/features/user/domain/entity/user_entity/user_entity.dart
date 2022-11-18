import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int id,
    required String uid,
    required String name,
    required String surname,
    required String sex,
    required String dateOfBirth,
    required String carBrand,
    required String carModel,
    required String drivingLicenseObtainingDate,
    required String deviceToken,
  }) = _UserEntity;

  static const emptyUser = UserEntity(
    id: 0,
    uid: 'uid',
    name: 'name',
    surname: 'surname',
    sex: 'sex',
    dateOfBirth: 'dateOfBirth',
    carBrand: 'carBrand',
    carModel: 'carModel',
    drivingLicenseObtainingDate: 'drivingLicenseObtainingDate',
    deviceToken: 'deviceToken',
  );
}
