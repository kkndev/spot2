import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/repositories/map_repository.dart';
import '/features/auth/domain/repositories/auth_repository.dart';
import 'map_state.dart';
import 'map_event.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final MapRepository mapRepository;

  MapBloc({required this.mapRepository}) : super(MapState()) {
    on<InitAuth>((event, emit) {});
    on<Update>((event, emit) {
      emit(event.newAuthState);
    });
    on<SetMapControllerEvent>((event, emit) {
      emit(state.copyWith(mapController: event.mapController));
    });
    on<SetBottomSheetEvent>((event, emit) {
      print(55555555555);
      emit(state.copyWith(bottomSheet: event.bottomSheet));
    });
  }
}
