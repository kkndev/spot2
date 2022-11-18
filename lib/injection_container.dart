import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spot2/features/auth2/data/data_source/auth_remote_data_source.dart';
import 'package:spot2/features/auth2/data/data_source/auth_remote_data_source_interface.dart';
import 'package:spot2/features/auth2/data/repository/auth_repository_impl.dart';
import 'package:spot2/features/auth2/domain/repository/auth_repository.dart';
import 'package:spot2/features/auth2/domain/usecase/login_to_service_usecase.dart';
import 'package:spot2/features/auth2/domain/usecase/refresh_user_master_token_usecase.dart';
import 'package:spot2/features/favorite_parking/data/data_source/favorite_parking_remote_data_source_interface.dart';
import 'package:spot2/features/favorite_parking/data/repository/favorite_parking_repository_impl.dart';
import 'package:spot2/features/favorite_parking/domain/repository/favorite_parking_repository.dart';
import 'package:spot2/features/favorite_parking/presentation/bloc/favorite_parking/favorite_parking.dart';
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
import 'features/parking/data/data_source/parking_remote_data_source.dart';
import 'features/parking/data/data_source/parking_remote_data_source_interface.dart';
import 'features/parking/data/repository/parking_repository_impl.dart';
import 'features/parking/domain/repository/parking_repository.dart';
import 'features/parking/domain/usecase/get_parking_usecase.dart';
import 'features/parking/presentation/bloc/parking/parking_bloc.dart';
import 'features/parking_camera/data/data_source/parking_camera_remote_data_source.dart';
import 'features/parking_camera/data/data_source/parking_camera_remote_data_source_interface.dart';
import 'features/parking_camera/data/repository/parking_camera_repository_impl.dart';
import 'features/parking_camera/presentation/bloc/parking_camera/parking_camera_bloc.dart';
import 'features/user/data/datasources/user_remote_data_source.dart';
import 'features/user/data/repositories/user_repository_impl.dart';
import 'core/platform/network_info.dart';
import 'features/auth2/presentation/bloc/auth/auth_bloc.dart';
import 'features/characters/data/datasources/person_remote_data_source.dart';
import 'features/user/domain/repositories/user_repository.dart';
import 'features/user/presentation/bloc/user/user_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(
      client: sl(),
    ),
  );
  sl.registerLazySingleton<PersonRemoteDataSource>(
    () => PersonRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  // User feature ---------------------------------------------------
  sl.registerFactory(
    () => UserBloc(
      activatePromoCodeUsecase: sl(),
      getUserUsecase: sl(),
      updateUserUsecase: sl(),
      whoamiUsecase: sl(),
      getMinAppVersionUsecase: sl(),
    ),
  );
  sl.registerLazySingleton(() => ActivatePromoCodeUsecase(sl()));
  sl.registerLazySingleton(() => GetUserUsecase(sl()));
  sl.registerLazySingleton(() => UpdateUserUsecase(sl()));
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
      getParkingByAddressUsecase: sl(),
    ),
  );
  sl.registerLazySingleton(() => GetParkingUsecase(sl()));
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

  // Auth2 feature ---------------------------------------------------
  sl.registerFactory(
    () => AuthBloc(
      refreshUserMasterTokenUsecase: sl(),
      loginToServiceUsecase: sl(),
    ),
  );
  sl.registerLazySingleton(() => RefreshUserMasterTokenUsecase(sl()));
  sl.registerLazySingleton(() => LoginToServiceUsecase(sl()));

  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<AuthDataSource>(
    // () => AuthDataSourceMock(
    () => AuthDataSourceImpl(
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
