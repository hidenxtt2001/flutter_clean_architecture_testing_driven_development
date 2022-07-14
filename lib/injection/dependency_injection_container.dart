import 'package:flutter_clean_architecture/configs/hive_configs.dart';
import 'package:flutter_clean_architecture/core/network/api_client.dart';
import 'package:flutter_clean_architecture/core/network/network_info.dart';
import 'package:flutter_clean_architecture/data/datasources/weather_local_data_source.dart';
import 'package:flutter_clean_architecture/data/datasources/weather_remote_data_source.dart';
import 'package:flutter_clean_architecture/data/repositories/weather_repository_impl.dart';
import 'package:flutter_clean_architecture/domain/repositories/weather_repository.dart';
import 'package:flutter_clean_architecture/domain/usecases/weather/get_current_weather_usecase.dart';
import 'package:flutter_clean_architecture/injection/dependency_injection.dart';
import 'package:flutter_clean_architecture/presentation/blocs/home/home_bloc.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

void initBlocsDI() {
  //! Feature
  _homeBloc();

  //! Core
  getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(getIt()));
  //! Extend
  getIt.registerLazySingleton<HiveInterface>(() => Hive);
  getIt.registerLazySingleton(() => ApiClient());
  getIt.registerLazySingleton(() => getIt.get<ApiClient>().getDio());
  getIt.registerLazySingleton(() => HiveConfigs());
  getIt.registerLazySingleton(() => InternetConnectionChecker());
}

void _homeBloc() {
  //Bloc
  getIt.registerFactory(
    () => HomeBloc(
      getCurrentWeatherUsecase: getIt.call(),
    ),
  );
  // Usecase
  getIt.registerLazySingleton(() => GetCurrentWeatherUsecase(getIt.call()));
  // Repository
  getIt.registerLazySingleton<WeatherRepository>(
    () => WeatherRepositoryImpl(
      localDataSource: getIt(),
      remoteDataSource: getIt(),
      networkInfo: getIt(),
    ),
  );
  // Data Sources
  getIt.registerLazySingleton<WeatherLocalDataSource>(
      () => WeatherLocalDataSourceImpl(getIt()));
  getIt.registerLazySingleton<WeatherRemoteDataSource>(
      () => WeatherRemoteDataSourceImpl(getIt()));
}
