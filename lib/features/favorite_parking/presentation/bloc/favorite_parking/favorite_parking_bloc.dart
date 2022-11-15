import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/data/dto/request_status/request_status.dart';
import '../../../domain/usecase/create_favorite_parking_usecase.dart';
import '../../../domain/usecase/delete_favorite_parking_usecase.dart';
import '../../../domain/usecase/get_favorite_parking_usecase.dart';
import '../../../domain/usecase/update_favorite_parking_usecase.dart';
import 'favorite_parking_state.dart';
import 'favorite_parking_event.dart';

class FavoriteParkingBloc
    extends Bloc<FavoriteParkingEvent, FavoriteParkingState> {
  final GetFavoriteParkingUsecase getFavoriteParkingUsecase;
  final CreateFavoriteParkingUsecase createFavoriteParkingUsecase;
  final UpdateFavoriteParkingUsecase updateFavoriteParkingUsecase;
  final DeleteFavoriteParkingUsecase deleteFavoriteParkingUsecase;

  FavoriteParkingBloc({
    required this.getFavoriteParkingUsecase,
    required this.createFavoriteParkingUsecase,
    required this.updateFavoriteParkingUsecase,
    required this.deleteFavoriteParkingUsecase,
  }) : super(FavoriteParkingState()) {
    on<InitFavoriteParkingEvent>((event, emit) {});
    on<GetFavoriteParkingEvent>((event, emit) async {
      emit(
        state.copyWith(
          favoriteParkingRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await getFavoriteParkingUsecase(
          GetFavoriteParkingParams(userUid: event.userUid));
      result.fold(
        (error) => emit(
          state.copyWith(
            favoriteParkingRequestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            favoriteParkingRequestStatus: RequestStatus.success(data: result),
            favoriteParkingList: result,
          ),
        ),
      );
    });
  }
}
