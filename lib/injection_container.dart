import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spot2/features/auth/domain/usecases/get_code_by_email.dart';
import 'package:spot2/features/auth/domain/usecases/get_code_by_phone.dart';
import 'package:spot2/features/auth/domain/usecases/get_parking_items.dart';
import 'package:spot2/features/favorite_parking/data/data_source/favorite_parking_remote_data_source_interface.dart';
import 'package:spot2/features/favorite_parking/data/repository/favorite_parking_repository_impl.dart';
import 'package:spot2/features/favorite_parking/domain/repository/favorite_parking_repository.dart';
import 'package:spot2/features/favorite_parking/presentation/bloc/favorite_parking/favorite_parking.dart';
import 'package:spot2/features/map/data/datasources/map_remote_data_source.dart';
import 'package:spot2/features/map/data/repositories/map_repository_impl.dart';
import 'package:spot2/features/parking/domain/usecase/get_parking_by_address_usecase.dart';
import 'package:spot2/features/parking_camera/domain/repository/parking_camera_repository.dart';
import 'package:spot2/features/parking_camera/domain/usecase/get_parking_camera_usecase.dart';
import 'package:spot2/features/user/data/datasources/user_remote_data_source_interface.dart';
import 'package:spot2/features/user/domain/usecases/activate_promo_code_usecase.dart';
import 'package:spot2/features/user/domain/usecases/get_min_app_version_usecase.dart';
import 'package:spot2/features/user/domain/usecases/get_user_usecase.dart';
import 'package:spot2/features/user/domain/usecases/update_user_usecase.dart';
import 'package:spot2/features/user/domain/usecases/whoami_usecase.dart';

import '/core/data/data_source/dio_client.dart';
import '/features/auth/data/datasources/auth_remote_data_source.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';
import 'features/auth/domain/repositories/auth_repository.dart';
import 'features/auth/domain/usecases/get_parking_places.dart';
import 'features/auth/domain/usecases/send_code_from_email.dart';
import 'features/auth/domain/usecases/send_code_from_phone.dart';
import 'features/favorite_parking/data/data_source/favorite_parking_remote_data_source.dart';
import 'features/favorite_parking/domain/usecase/create_favorite_parking_usecase.dart';
import 'features/favorite_parking/domain/usecase/delete_favorite_parking_usecase.dart';
import 'features/favorite_parking/domain/usecase/get_favorite_parking_usecase.dart';
import 'features/favorite_parking/domain/usecase/update_favorite_parking_usecase.dart';
import 'features/free_parking/data/data_source/free_parking_remote_data_source.dart';
import 'features/free_parking/data/data_source/free_parking_remote_data_source_interface.dart';
import 'features/free_parking/data/repository/free_parking_repository_impl.dart';
import 'features/free_parking/domain/repository/free_parking_repository.dart';
import 'features/free_parking/domain/usecase/create_free_parking_usecase.dart';
import 'features/free_parking/domain/usecase/delete_free_parking_usecase.dart';
import 'features/free_parking/domain/usecase/get_free_parking_usecase.dart';
import 'features/free_parking/domain/usecase/update_free_parking_usecase.dart';
import 'features/free_parking/presentation/bloc/free_parking/free_parking_bloc.dart';
import 'features/map/domain/repositories/map_repository.dart';
import 'features/map/presentation/bloc/map/map_bloc.dart';
import 'features/parking/data/data_source/parking_remote_data_source.dart';
import 'features/parking/data/data_source/parking_remote_data_source_interface.dart';
import 'features/parking/data/repository/parking_repository_impl.dart';
import 'features/parking/domain/repository/parking_repository.dart';
import 'features/parking/domain/usecase/get_parking_item_usecase.dart';
import 'features/parking/domain/usecase/get_parking_usecase.dart';
import 'features/parking/presentation/bloc/parking/parking_bloc.dart';
import 'features/parking_camera/data/data_source/parking_camera_remote_data_source.dart';
import 'features/parking_camera/data/data_source/parking_camera_remote_data_source_interface.dart';
import 'features/parking_camera/data/repository/parking_camera_repository_impl.dart';
import 'features/parking_camera/presentation/bloc/parking_camera/parking_camera_bloc.dart';
import 'features/user/data/datasources/user_remote_data_source.dart';
import 'features/user/data/repositories/user_repository_impl.dart';
import 'core/platform/network_info.dart';
import 'features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'features/user/domain/repositories/user_repository.dart';
import 'features/user/domain/usecases/update_user_name_usecase.dart';
import 'features/user/presentation/bloc/user/user_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // User feature ---------------------------------------------------
  sl.registerFactory(
    () => UserBloc(
      activatePromoCodeUsecase: sl(),
      getUserUsecase: sl(),
      updateUserUsecase: sl(),
      updateUserNameUsecase: sl(),
      whoamiUsecase: sl(),
      getMinAppVersionUsecase: sl(),
    ),
  );
  sl.registerLazySingleton(() => ActivatePromoCodeUsecase(sl()));
  sl.registerLazySingleton(() => GetUserUsecase(sl()));
  sl.registerLazySingleton(() => UpdateUserUsecase(sl()));
  sl.registerLazySingleton(() => UpdateUserNameUsecase(sl()));
  sl.registerLazySingleton(() => WhoamiUsecase(sl()));
  sl.registerLazySingleton(() => GetMinAppVersionUsecase(sl()));
  sl.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(
      remoteDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSourceImpl(
      // () => ParkingDataSourceImpl(
      client: sl(),
    ),
  );
  //----------------------------------------------------------------------------

  // Parking feature ---------------------------------------------------
  sl.registerFactory(
    () => ParkingBloc(
      getParkingUsecase: sl(),
      getParkingItemUsecase: sl(),
      getParkingByAddressUsecase: sl(),
    ),
  );
  sl.registerLazySingleton(() => GetParkingUsecase(sl()));
  sl.registerLazySingleton(() => GetParkingItemUsecase(sl()));
  sl.registerLazySingleton(() => GetParkingByAddressUsecase(sl()));
  sl.registerLazySingleton<ParkingRepository>(
    () => ParkingRepositoryImpl(
      remoteDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<ParkingDataSource>(
    // () => ParkingDataSourceMock(
    () => ParkingDataSourceImpl(
      client: sl(),
    ),
  );
  //----------------------------------------------------------------------------

  // FavoriteParking feature ---------------------------------------------------
  sl.registerFactory(
    () => FavoriteParkingBloc(
      getFavoriteParkingUsecase: sl(),
      createFavoriteParkingUsecase: sl(),
      updateFavoriteParkingUsecase: sl(),
      deleteFavoriteParkingUsecase: sl(),
    ),
  );
  sl.registerLazySingleton(() => GetFavoriteParkingUsecase(sl()));
  sl.registerLazySingleton(() => CreateFavoriteParkingUsecase(sl()));
  sl.registerLazySingleton(() => UpdateFavoriteParkingUsecase(sl()));
  sl.registerLazySingleton(() => DeleteFavoriteParkingUsecase(sl()));
  sl.registerLazySingleton<FavoriteParkingRepository>(
    () => FavoriteParkingRepositoryImpl(
      remoteDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<FavoriteParkingDataSource>(
    // () => FavoriteParkingDataSourceMock(
    () => FavoriteParkingDataSourceImpl(
      client: sl(),
    ),
  );
  //----------------------------------------------------------------------------

  // FreeParking feature ---------------------------------------------------
  sl.registerFactory(
    () => FreeParkingBloc(
      getFreeParkingUsecase: sl(),
      createFreeParkingUsecase: sl(),
      updateFreeParkingUsecase: sl(),
      deleteFreeParkingUsecase: sl(),
    ),
  );
  sl.registerLazySingleton(() => GetFreeParkingUsecase(sl()));
  sl.registerLazySingleton(() => CreateFreeParkingUsecase(sl()));
  sl.registerLazySingleton(() => UpdateFreeParkingUsecase(sl()));
  sl.registerLazySingleton(() => DeleteFreeParkingUsecase(sl()));
  sl.registerLazySingleton<FreeParkingRepository>(
    () => FreeParkingRepositoryImpl(
      remoteDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<FreeParkingDataSource>(
    // () => FreeParkingDataSourceMock(
    () => FreeParkingDataSourceImpl(
      client: sl(),
    ),
  );
  //----------------------------------------------------------------------------

  // ParkingCamera feature ---------------------------------------------------
  sl.registerFactory(
    () => ParkingCameraBloc(
      getParkingCameraUsecase: sl(),
    ),
  );
  sl.registerLazySingleton(() => GetParkingCameraUsecase(sl()));
  sl.registerLazySingleton<ParkingCameraRepository>(
    () => ParkingCameraRepositoryImpl(
      remoteDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<ParkingCameraDataSource>(
    // () => FreeParkingDataSourceMock(
    () => ParkingCameraDataSourceImpl(
      client: sl(),
    ),
  );
  //----------------------------------------------------------------------------

  // Auth feature ---------------------------------------------------
  sl.registerFactory(
    () => AuthBloc(
      getCodeByPhone: sl(),
      getCodeByEmail: sl(),
      getParkingItems: sl(),
      getParkingPlaces: sl(),
      sendCodeFromPhone: sl(),
      sendCodeFromEmail: sl(),
    ),
  );
  sl.registerLazySingleton(() => GetCodeByPhone(sl()));
  sl.registerLazySingleton(() => GetCodeByEmail(sl()));
  sl.registerLazySingleton(() => GetParkingItems(sl()));
  sl.registerLazySingleton(() => GetParkingPlaces(sl()));
  sl.registerLazySingleton(() => SendCodeFromPhone(sl()));
  sl.registerLazySingleton(() => SendCodeFromEmail(sl()));

  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  sl.registerLazySingleton<AuthRemoteDataSource>(
    // () => AuthDataSourceMock(
    () => AuthRemoteDataSourceImpl(
      client: sl(),
    ),
  );
  //----------------------------------------------------------------------------

  // Map feature ---------------------------------------------------
  sl.registerFactory(
    () => MapBloc(
      mapRepository: sl(),
    ),
  );

  sl.registerLazySingleton<MapRepository>(
    () => MapRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  sl.registerLazySingleton<MapRemoteDataSource>(
    // () => AuthDataSourceMock(
    () => MapRemoteDataSourceImpl(
      client: sl(),
    ),
  );
  //----------------------------------------------------------------------------

  // Core
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImp(),
  );

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  // sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => dio);
  // sl.registerLazySingleton(() => InternetConnectionChecker());
}
