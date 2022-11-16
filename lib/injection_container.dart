import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spot2/features/favorite_parking/data/data_source/favorite_parking_remote_data_source_interface.dart';
import 'package:spot2/features/favorite_parking/data/data_source/favorite_parking_remote_data_source_mock.dart';
import 'package:spot2/features/favorite_parking/data/repository/favorite_parking_repository_impl.dart';
import 'package:spot2/features/favorite_parking/domain/repository/favorite_parking_repository.dart';
import 'package:spot2/features/favorite_parking/presentation/bloc/favorite_parking/favorite_parking.dart';

import '/core/data/data_source/dio_client.dart';
import '/features/auth/data/datasources/auth_remote_data_source.dart';
import 'features/favorite_parking/domain/usecase/create_favorite_parking_usecase.dart';
import 'features/favorite_parking/domain/usecase/delete_favorite_parking_usecase.dart';
import 'features/favorite_parking/domain/usecase/get_favorite_parking_usecase.dart';
import 'features/favorite_parking/domain/usecase/update_favorite_parking_usecase.dart';
import 'features/free_parking/data/data_source/free_parking_remote_data_source_interface.dart';
import 'features/free_parking/data/data_source/free_parking_remote_data_source_mock.dart';
import 'features/free_parking/data/repository/free_parking_repository_impl.dart';
import 'features/free_parking/domain/repository/free_parking_repository.dart';
import 'features/free_parking/domain/usecase/create_free_parking_usecase.dart';
import 'features/free_parking/domain/usecase/delete_free_parking_usecase.dart';
import 'features/free_parking/domain/usecase/get_free_parking_usecase.dart';
import 'features/free_parking/domain/usecase/update_free_parking_usecase.dart';
import 'features/free_parking/presentation/bloc/free_parking/free_parking_bloc.dart';
import 'features/user/domain/usecases/activate_promo_code_usecase.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';
import 'features/auth/domain/usecases/get_parking_items.dart';
import 'features/auth/domain/usecases/get_parking_places.dart';
import 'features/auth/domain/usecases/send_code_from_email.dart';
import 'features/auth/domain/usecases/send_code_from_phone.dart';
import 'features/user/data/datasources/user_remote_data_source.dart';
import 'features/user/data/repositories/user_repository_impl.dart';
import 'features/user/domain/usecases/get_user_usecase.dart';
import 'core/platform/network_info.dart';
import 'features/auth/domain/repositories/auth_repository.dart';
import 'features/auth/domain/usecases/get_code_by_email.dart';
import 'features/auth/domain/usecases/get_code_by_phone.dart';
import 'features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'features/characters/data/datasources/person_local_data_source.dart';
import 'features/characters/data/datasources/person_remote_data_source.dart';
import 'features/characters/domain/usecases/get_all_persons.dart';
import 'features/characters/domain/usecases/search_person.dart';
import 'features/characters/presentation/bloc/person_list_cubit/person_list_cubit.dart';
import 'features/characters/presentation/bloc/search_bloc/search_bloc.dart';
import 'features/user/domain/repositories/user_repository.dart';
import 'features/user/presentation/bloc/user/user_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC / Cubit
  sl.registerFactory(
    () => PersonListCubit(getAllPersons: sl<GetAllPersons>()),
  );
  sl.registerFactory(
    () => PersonSearchBloc(searchPerson: sl()),
  );
  sl.registerFactory(
    () => AuthBloc(
      getCodeByEmail: sl(),
      getCodeByPhone: sl(),
      sendCodeFromEmail: sl(),
      sendCodeFromPhone: sl(),
      getParkingItems: sl(),
      getParkingPlaces: sl(),
    ),
  );
  sl.registerFactory(
    () => UserBloc(
      getUserUsecase: sl(),
      activatePromoCodeUsecase: sl(),
    ),
  );

  // UseCases
  sl.registerLazySingleton(() => GetAllPersons(sl()));
  sl.registerLazySingleton(() => SearchPerson(sl()));
  sl.registerLazySingleton(() => GetCodeByEmail(sl()));
  sl.registerLazySingleton(() => GetCodeByPhone(sl()));
  sl.registerLazySingleton(() => SendCodeFromEmail(sl()));
  sl.registerLazySingleton(() => SendCodeFromPhone(sl()));
  sl.registerLazySingleton(() => GetParkingItems(sl()));
  sl.registerLazySingleton(() => GetParkingPlaces(sl()));
  sl.registerLazySingleton(() => GetUserUsecase(sl()));
  sl.registerLazySingleton(() => ActivatePromoCodeUsecase(sl()));

  // Repository
  sl.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(
      remoteDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

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

  sl.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSourceImpl(
      client: sl(),
    ),
  );

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
    () => FavoriteParkingDataSourceMock(
      // () => FavoriteParkingDataSourceImpl(
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
    () => FreeParkingDataSourceMock(
      // () => FreeParkingDataSourceImpl(
      client: sl(),
    ),
  );
  //----------------------------------------------------------------------------

  sl.registerLazySingleton<PersonLocalDataSource>(
    () => PersonLocalDataSourceImpl(sharedPreferences: sl()),
  );

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
