import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/free_parking_entity/free_parking_entity.dart';
import '../../../domain/entity/request_status/request_status.dart';

part 'free_parking_state.freezed.dart';

@freezed
class FreeParkingState with _$FreeParkingState {
  factory FreeParkingState([
    @Default(RequestStatus.init())
        RequestStatus<List<FreeParkingEntity>> getFreeParkingRequestStatus,
    @Default(RequestStatus.init())
        RequestStatus<String> deleteFreeParkingRequestStatus,
    @Default(RequestStatus.init())
        RequestStatus<List<FreeParkingEntity>> createFreeParkingRequestStatus,
    @Default([]) List<FreeParkingEntity> freeParkingList,
  ]) = _FreeParkingState;
}
