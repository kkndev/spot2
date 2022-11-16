import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/favorite_parking_entity/favorite_parking_entity.dart';
import '../../../domain/entity/request_status/request_status.dart';

part 'favorite_parking_state.freezed.dart';

@freezed
class FavoriteParkingState with _$FavoriteParkingState {
  factory FavoriteParkingState([
    @Default(RequestStatus.init())
        RequestStatus<List<FavoriteParkingEntity>> favoriteParkingRequestStatus,
    @Default([]) List<FavoriteParkingEntity> favoriteParkingList,
  ]) = _FavoriteParkingState;
}
