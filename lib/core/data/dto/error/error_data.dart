import 'package:freezed_annotation/freezed_annotation.dart';

import 'error_message.dart';
part 'error_data.freezed.dart';
part 'error_data.g.dart';

@freezed
class ErrorData with _$ErrorData {
  const factory ErrorData({
    required int code,
    required String message,
    @Default([]) List<ErrorMessage> errors,
  }) = _ErrorData;

  factory ErrorData.fromJson(Map<String, dynamic> json) =>
      _$ErrorDataFromJson(json);
}
