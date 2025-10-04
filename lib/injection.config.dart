// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import 'app_modules.dart' as _i110;
import 'core/network/network_info.dart' as _i75;
import 'core/utils/input_conveter.dart' as _i848;
import 'data/datasources/number_trivia_local_data_source.dart' as _i607;
import 'data/datasources/number_trivia_remote_data_source.dart' as _i389;
import 'data/repositories/NumberRepositoryImpl.dart' as _i294;
import 'domain/repositories/number_trivia_repository.dart' as _i275;
import 'domain/usecases/get_concrete_number_usecase.dart' as _i360;
import 'domain/usecases/get_random_number_usecase.dart' as _i119;
import 'presentation/bloc/number_trivia_bloc.dart' as _i640;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.sharedPreferences,
      preResolve: true,
    );
    gh.singleton<_i848.InputConverter>(() => _i848.InputConverter());
    gh.lazySingleton<_i161.InternetConnection>(
        () => appModule.internetConnection);
    gh.lazySingleton<_i519.Client>(() => appModule.httpClient);
    gh.lazySingleton<_i75.NetworkInfo>(() => _i75.NetWorkInfoImpl(
        internetConnection: gh<_i161.InternetConnection>()));
    gh.lazySingleton<_i607.NumberTriviaLocalDataSource>(() =>
        _i607.NumberTriviaLocalDataSourceImpl(
            sharedPreferences: gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i389.NumberTriviaRemoteDataSource>(() =>
        _i389.NumberTriviaRemoteDataSourceImpl(client: gh<_i519.Client>()));
    gh.lazySingleton<_i275.NumberTriviaRepository>(() =>
        _i294.NumberRepositoryImpl(
          numberTriviaLocalDataSource: gh<_i607.NumberTriviaLocalDataSource>(),
          numberTriviaRemoteDataSource:
              gh<_i389.NumberTriviaRemoteDataSource>(),
          networkInfo: gh<_i75.NetworkInfo>(),
        ));
    gh.lazySingleton<_i360.GetConcreteNumberUseCase>(() =>
        _i360.GetConcreteNumberUseCase(gh<_i275.NumberTriviaRepository>()));
    gh.lazySingleton<_i119.GetRandomNumberUseCase>(
        () => _i119.GetRandomNumberUseCase(gh<_i275.NumberTriviaRepository>()));
    gh.lazySingleton<_i640.NumberTriviaBloc>(() => _i640.NumberTriviaBloc(
          concreteNumberUseCase: gh<_i360.GetConcreteNumberUseCase>(),
          randomNumberUseCase: gh<_i119.GetRandomNumberUseCase>(),
          inputConverter: gh<_i848.InputConverter>(),
        ));
    return this;
  }
}

class _$AppModule extends _i110.AppModule {}
