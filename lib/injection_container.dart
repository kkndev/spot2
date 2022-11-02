import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spot2/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:spot2/features/auth/domain/usecases/send_code_from_email.dart';
import 'package:spot2/features/auth/domain/usecases/send_code_from_phone.dart';

import 'core/platform/network_info.dart';
import 'features/auth/data/datasources/auth_remote_data_source.dart';
import 'features/auth/domain/repositories/auth_repository.dart';
import 'features/auth/domain/usecases/get_code_by_email.dart';
import 'features/auth/domain/usecases/get_code_by_phone.dart';
import 'features/auth/presentation/bloc/auth/auth_bloc.dart';
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
  sl.registerFactory(
    () => AuthBloc(
      getCodeByEmail: sl(),
      getCodeByPhone: sl(),
      sendCodeFromEmail: sl(),
      sendCodeFromPhone: sl(),
    ),
  );

  // UseCases
  sl.registerLazySingleton(() => GetAllPersons(sl()));
  sl.registerLazySingleton(() => SearchPerson(sl()));
  sl.registerLazySingleton(() => GetCodeByEmail(sl()));
  sl.registerLazySingleton(() => GetCodeByPhone(sl()));
  sl.registerLazySingleton(() => SendCodeFromEmail(sl()));
  sl.registerLazySingleton(() => SendCodeFromPhone(sl()));

  // Repository
  sl.registerLazySingleton<PersonRepository>(
    () => PersonRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<PersonRemoteDataSource>(
    () => PersonRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(
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
