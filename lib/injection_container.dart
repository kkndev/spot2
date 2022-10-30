import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'core/platform/network_info.dart';
import 'features/characters/data/datasources/person_local_data_source.dart';
import 'features/characters/data/datasources/person_remote_data_source.dart';
import 'features/characters/domain/repositories/person_repository.dart';
import 'features/characters/data/repositories/person_repository_impl.dart';
import 'features/characters/domain/usecases/get_all_persons.dart';
import 'features/characters/domain/usecases/search_person.dart';
import 'features/characters/presentation/bloc/person_list_cubit/person_list_cubit.dart';
import 'features/characters/presentation/bloc/search_bloc/search_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC / Cubit
  sl.registerFactory(
    () => PersonListCubit(getAllPersons: sl<GetAllPersons>()),
  );
  sl.registerFactory(
    () => PersonSearchBloc(searchPerson: sl()),
  );

  // UseCases
  sl.registerLazySingleton(() => GetAllPersons(sl()));
  sl.registerLazySingleton(() => SearchPerson(sl()));

  // Repository
  sl.registerLazySingleton<PersonRepository>(
    () => PersonRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<PersonRemoteDataSource>(
    () => PersonRemoteDataSourceImpl(
      client: sl(),
    ),
  );

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
  sl.registerLazySingleton(() => Dio());
  // sl.registerLazySingleton(() => InternetConnectionChecker());
}
