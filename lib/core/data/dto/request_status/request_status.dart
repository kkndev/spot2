import 'package:freezed_annotation/freezed_annotation.dart';

import '../error/failure.dart';
import '/core/data/dto/error/error_api.dart';

part 'request_status.freezed.dart';

@freezed
class RequestStatus<T> with _$RequestStatus<T> {
  const factory RequestStatus.init() = _LoadInit;
  const factory RequestStatus.loading() = _LoadInProgress;
  const factory RequestStatus.success({required T data}) = _LoadSuccess;
  const factory RequestStatus.failure({required Failure error}) = _LoadFailure;
}
