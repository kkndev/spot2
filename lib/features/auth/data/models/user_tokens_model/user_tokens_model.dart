import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_tokens_model.freezed.dart';
part 'user_tokens_model.g.dart';

@freezed
class UserTokensModel with _$UserTokensModel {
  const factory UserTokensModel({
    required String userMasterToken,
    required String userMasterRefreshToken,
  }) = _UserTokensModel;

  factory UserTokensModel.fromJson(Map<String, dynamic> json) =>
      _$UserTokensModelFromJson(json);
}
