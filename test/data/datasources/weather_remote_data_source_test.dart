import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/configs/app_config.dart';
import 'package:flutter_clean_architecture/core/network/api_client.dart';
import 'package:flutter_clean_architecture/core/error/exception.dart';
import 'package:flutter_clean_architecture/data/datasources/weather_remote_data_source.dart';
import 'package:flutter_clean_architecture/data/models/weather/weather_model.dart';
import 'package:flutter_clean_architecture/injection/dependency_injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/fixture_reader.dart';
import '../repositories/weather_repository_impl_test.mocks.dart';


void main() {
  late Dio dio;
  late DioAdapter dioAdapter;
  late WeatherRemoteDataSourceImpl weatherRemoteDataSourceImpl;

  TestWidgetsFlutterBinding.ensureInitialized();
  AppConfigs.initializeApp();

  setUp(() {
    dio = getIt.get<ApiClient>().getDio();
    dioAdapter = DioAdapter(dio: dio);
    weatherRemoteDataSourceImpl = WeatherRemoteDataSourceImpl(dio);
  });

  const country = 'vietnam';
  group('getCurrentWeather', () {
    test('- get current weather method should return data json', () async {
      // arrange
      dioAdapter.onGet(WeatherRemoteDataSourceImpl.pathCurrentWeather,
          (server) {
        server.reply(200, jsonDecode(fixture('weather.json')));
      }, queryParameters: {
        "q": country,
        "aqi": "no",
      });
      // act
      final result =
          await weatherRemoteDataSourceImpl.getCurrentWeather(country);
      // assert
      expect(
          WeatherModel.fromJson(jsonDecode(fixture('weather.json'))), result);
    });

    test(
      '- get current weather method should throw exception',
      () async {
        // arrange
        dioAdapter.onGet(WeatherRemoteDataSourceImpl.pathCurrentWeather,
            (server) {
          server.reply(401, {
            "error": {
              "code": 1002,
              "message": "API key is invalid or not provided."
            }
          });
        }, queryParameters: {
          "q": country,
          "aqi": "no",
        });
        // act
        final call = weatherRemoteDataSourceImpl.getCurrentWeather;
        // assert
        expect(
            () => call(country), throwsA(const TypeMatcher<ServerException>()));
      },
    );
  });
}
