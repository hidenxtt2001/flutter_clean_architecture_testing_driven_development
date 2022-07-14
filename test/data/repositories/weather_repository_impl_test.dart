import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/error/exception.dart';
import 'package:flutter_clean_architecture/core/error/failure.dart';
import 'package:flutter_clean_architecture/core/network/network_info.dart';
import 'package:flutter_clean_architecture/data/datasources/weather_local_data_source.dart';
import 'package:flutter_clean_architecture/data/datasources/weather_remote_data_source.dart';
import 'package:flutter_clean_architecture/data/models/weather/condition_model.dart';
import 'package:flutter_clean_architecture/data/models/weather/current_model.dart';
import 'package:flutter_clean_architecture/data/models/weather/location_model.dart';
import 'package:flutter_clean_architecture/data/models/weather/weather_model.dart';
import 'package:flutter_clean_architecture/data/repositories/weather_repository_impl.dart';
import 'package:flutter_clean_architecture/domain/entities/weather/weather.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'weather_repository_impl_test.mocks.dart';

@GenerateMocks([
  WeatherRemoteDataSource,
  WeatherLocalDataSource,
  NetworkInfo,
  HiveInterface,
  Box,
])
void main() {
  late WeatherRepositoryImpl weatherRepositoryImpl;
  late MockWeatherLocalDataSource weatherLocalDataSource;
  late MockWeatherRemoteDataSource weatherRemoteDataSource;
  late MockNetworkInfo networkInfo;

  setUp(() {
    weatherLocalDataSource = MockWeatherLocalDataSource();
    weatherRemoteDataSource = MockWeatherRemoteDataSource();
    networkInfo = MockNetworkInfo();
    weatherRepositoryImpl = WeatherRepositoryImpl(
      localDataSource: weatherLocalDataSource,
      remoteDataSource: weatherRemoteDataSource,
      networkInfo: networkInfo,
    );
  });

  group('getCurrentWeather', () {
    var country = 'vietnam';
    var tWeatherModel = const WeatherModel(
      location: LocationModel(
          name: "Hanoi",
          region: "",
          country: "Vietnam",
          lat: 21.03,
          lon: 105.85,
          tzId: "Asia/Ho_Chi_Minh",
          localtimeEpoch: 1649584618,
          localtime: "2022-04-10 16:56"),
      current: CurrentModel(
          lastUpdatedEpoch: 1649583900,
          lastUpdated: "2022-04-10 16:45",
          tempC: 27.0,
          tempF: 80.6,
          isDay: 1,
          condition: ConditionModel(
              text: "Partly cloudy",
              icon: "//cdn.weatherapi.com/weather/64x64/day/116.png",
              code: 1003),
          windMph: 10.5,
          windKph: 16.9,
          windDegree: 80,
          windDir: "E",
          pressureMb: 1008.0,
          pressureIn: 29.77,
          precipMm: 0.0,
          precipIn: 0.0,
          humidity: 62,
          cloud: 75,
          feelslikeC: 26.7,
          feelslikeF: 80.0,
          visKm: 10.0,
          visMiles: 6.0,
          uv: 8.0,
          gustMph: 11.2,
          gustKph: 18.0),
    );
    Weather tWeather = tWeatherModel;
    test('Should check the device is online', () async {
      // arrange
      when(networkInfo.isConnected).thenAnswer((realInvocation) async => true);
      when(weatherRemoteDataSource.getCurrentWeather(country))
          .thenAnswer((realInvocation) async => tWeatherModel);
      // act
      weatherRepositoryImpl.getCurrentWeather(country);
      // assert
      verify(networkInfo.isConnected);
    });

    group('Device is online', () {
      setUp(() {
        when(networkInfo.isConnected)
            .thenAnswer((realInvocation) async => true);
      });

      test(
          'should return remote data when the call to remote data source is successfull',
          () async {
        // arrange
        when(weatherRemoteDataSource.getCurrentWeather(country))
            .thenAnswer((realInvocation) async => tWeatherModel);
        // act
        final result = await weatherRepositoryImpl.getCurrentWeather(country);
        // assert
        verify(weatherRemoteDataSource.getCurrentWeather(country));
        expect(result, equals(Right(tWeather)));
      });

      test(
          'should cache the data locally when the call to remote data source is successfull',
          () async {
        // arrange
        when(weatherRemoteDataSource.getCurrentWeather(country))
            .thenAnswer((realInvocation) async => tWeatherModel);
        // act
        await weatherRepositoryImpl.getCurrentWeather(country);
        // assert
        verify(weatherRemoteDataSource.getCurrentWeather(country));
        verify(weatherLocalDataSource.cacheWeather(tWeatherModel));
      });

      test(
          'should throw server failure when the call to remote data source is unuccessfull',
          () async {
        // arrange
        when(weatherRemoteDataSource.getCurrentWeather(country))
            .thenThrow(ServerException());
        // act
        final result = await weatherRepositoryImpl.getCurrentWeather(country);
        // assert
        verify(weatherRemoteDataSource.getCurrentWeather(country));
        verifyZeroInteractions(weatherLocalDataSource);
        expect(result, equals(const Left(ServerFailure())));
      });
    });

    group('Device is offline', () {
      setUp(() {
        when(networkInfo.isConnected)
            .thenAnswer((realInvocation) async => false);
      });

      test(
        'should return last localy cached data when the cached data is present',
        () async {
          //arrange
          when(weatherLocalDataSource.getLastWeather())
              .thenAnswer((realInvocation) async => tWeatherModel);
          // act
          final result = await weatherRepositoryImpl.getCurrentWeather(country);
          // assert
          verify(networkInfo.isConnected);
          verify(weatherLocalDataSource.getLastWeather());
          expect(result, equals(Right(tWeather)));
        },
      );

      test(
        'should return cachedfailure when call last cached is not present',
        () async {
          //arrange
          when(weatherLocalDataSource.getLastWeather())
              .thenThrow(CacheException());
          // act
          final result = await weatherRepositoryImpl.getCurrentWeather(country);
          // assert
          verify(networkInfo.isConnected);
          verify(weatherLocalDataSource.getLastWeather());
          expect(result, equals(const Left(CacheFailure())));
        },
      );
    });
  });
}
