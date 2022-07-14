import 'package:flutter_clean_architecture/core/error/exception.dart';
import 'package:flutter_clean_architecture/core/network/network_info.dart';
import 'package:flutter_clean_architecture/data/datasources/weather_local_data_source.dart';
import 'package:flutter_clean_architecture/data/datasources/weather_remote_data_source.dart';
import 'package:flutter_clean_architecture/domain/entities/weather/weather.dart';
import 'package:flutter_clean_architecture/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherLocalDataSource localDataSource;
  final WeatherRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  WeatherRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Weather>> getCurrentWeather(String country) async {
    try {
      if (await networkInfo.isConnected) {
        final tWeatherModel = await remoteDataSource.getCurrentWeather(country);
        localDataSource.cacheWeather(tWeatherModel);
        return Right(tWeatherModel);
      } else {
        final tWeahterModel = await localDataSource.getLastWeather();
        return Right(tWeahterModel);
      }
    } on ServerException catch (e) {
      return const Left(ServerFailure());
    } on CacheException catch (e) {
      return const Left(CacheFailure());
    } on DatabaseException catch (e) {
      return const Left(DatabaseFailure());
    }
  }
}
