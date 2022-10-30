import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_response.freezed.dart';
part 'success_response.g.dart';

@Freezed(genericArgumentFactories: true)
class SuccessResponse<T> with _$SuccessResponse<T> {
  const factory SuccessResponse({
    required bool success,
    required T data,
  }) = _SuccessResponse<T>;

  factory SuccessResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$SuccessResponseFromJson(json, fromJsonT);
}
