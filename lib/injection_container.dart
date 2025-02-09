import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:numbers_app_clean_architecture/core/utils/input_conveter.dart';
import 'package:numbers_app_clean_architecture/data/datasources/number_trivia_local_data_source.dart';
import 'package:numbers_app_clean_architecture/data/datasources/number_trivia_remote_data_source.dart';
import 'package:numbers_app_clean_architecture/data/repositories/NumberRepositoryImpl.dart';
import 'package:numbers_app_clean_architecture/domain/usecases/get_concrete_number_usecase.dart';
import 'package:numbers_app_clean_architecture/domain/usecases/get_random_number_usecase.dart';
import 'package:numbers_app_clean_architecture/presentation/bloc/number_trivia_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/network/network_info.dart';
import 'domain/repositories/number_trivia_repository.dart';
import 'package:http/http.dart' as http;
final sl = GetIt.instance;


Future<void> init() async {
  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnection());

  // Data sources
  sl.registerLazySingleton<NumberTriviaRemoteDataSource>(
          () => NumberTriviaRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<NumberTriviaLocalDataSource>(
          () => NumberTriviaLocalDataSourceImpl(sharedPreferences: sl()));

  // Repository
  sl.registerLazySingleton<NumberTriviaRepository>(
          () => NumberRepositoryImpl(
        numberTriviaRemoteDataSource: sl(),
        numberTriviaLocalDataSource: sl(),
        networkInfo: sl(),
      ));

  // Core
  sl.registerLazySingleton(() => InputConverter());
  sl.registerLazySingleton<NetworkInfo>(
          () => NetWorkInfoImpl(internetConnection: sl()));

  // UseCases
  sl.registerLazySingleton(() => GetConcreteNumberUseCase(sl()));
  sl.registerLazySingleton(() => GetRandomNumberUseCase(sl()));

  // Feature
  sl.registerFactory(() => NumberTriviaBloc(
    concreteNumberUseCase: sl(),
    randomNumberUseCase: sl(),
    inputConverter: sl(),
  ));
}
