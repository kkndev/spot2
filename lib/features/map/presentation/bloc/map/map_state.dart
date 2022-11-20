import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

import '/core/data/dto/request_status/request_status.dart';

part 'map_state.freezed.dart';

@freezed
class MapState with _$MapState {
  factory MapState([
    @Default(RequestStatus.init()) RequestStatus<String> requestStatus,
    @Default('') String result,
    MapboxMapController? mapController,
    Widget? bottomSheet,
  ]) = _MapState;
}
