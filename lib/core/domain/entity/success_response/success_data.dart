import 'package:freezed_annotation/freezed_annotation.dart';
part 'success_data.freezed.dart';
part 'success_data.g.dart';

@freezed
class SuccessData with _$SuccessData {
  const factory SuccessData({
    required bool result,
  }) = _SuccessData;

  factory SuccessData.fromJson(json) => _$SuccessDataFromJson(json);
}
