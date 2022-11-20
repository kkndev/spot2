import 'package:flutter/cupertino.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

import 'map_state.dart';

abstract class MapEvent {}

class InitAuth extends MapEvent {}

class Update extends MapEvent {
  Update({required this.newAuthState});
  final MapState newAuthState;
}

class GetCodeByEmail extends MapEvent {
  GetCodeByEmail({required this.email});
  final String email;
}

class SetMapControllerEvent extends MapEvent {
  SetMapControllerEvent({required this.mapController});
  final MapboxMapController mapController;
}

class SetBottomSheetEvent extends MapEvent {
  SetBottomSheetEvent({required this.bottomSheet});
  final Widget? bottomSheet;
}
