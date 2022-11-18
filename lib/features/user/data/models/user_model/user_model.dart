import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String uid,
    @Default('name') String name,
    @Default('surname') String surname,
    @Default('sex') String sex,
    @Default('date_of_birth')
    @JsonKey(name: 'date_of_birth')
        String dateOfBirth,
    @Default('car_brand') @JsonKey(name: 'car_brand') String carBrand,
    @Default('car_model') @JsonKey(name: 'car_model') String carModel,
    @Default('driving_license_obtaining_date')
    @JsonKey(name: 'driving_license_obtaining_date')
        String drivingLicenseObtainingDate,
    @Default('device_token') @JsonKey(name: 'device_token') String deviceToken,
    @Default('created_at') @JsonKey(name: 'created_at') String createdAt,
    @Default('updated_at') @JsonKey(name: 'updated_at') String updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
