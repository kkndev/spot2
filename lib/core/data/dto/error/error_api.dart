import 'package:freezed_annotation/freezed_annotation.dart';

import 'error_data.dart';
part 'error_api.freezed.dart';
part 'error_api.g.dart';

@freezed
class ErrorApi with _$ErrorApi {
  const factory ErrorApi({
    required bool success,
    required ErrorData error,
  }) = _ErrorApi;

  factory ErrorApi.unknownError() {
    return const ErrorApi(
      success: false,
      error: ErrorData(
        code: -1,
        message: 'Unknown error!',
      ),
    );
  }

  factory ErrorApi.fromJson(Map<String, dynamic> json) =>
      _$ErrorApiFromJson(json);
}
