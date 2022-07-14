import 'dart:convert';

import 'package:flutter_clean_architecture/data/constants/keys.dart';
import 'package:flutter_clean_architecture/data/datasources/weather_local_data_source.dart';
import 'package:flutter_clean_architecture/data/models/weather/weather_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/fixture_reader.dart';
import '../repositories/weather_repository_impl_test.mocks.dart';
void main() {
  late MockHiveInterface mockHiveInterface;
  late MockBox mockHiveBox;
  late WeatherLocalDataSourceImpl weatherLocalDataSourceImpl;
  setUp(() {
    mockHiveInterface = MockHiveInterface();
    mockHiveBox = MockBox();
    weatherLocalDataSourceImpl = WeatherLocalDataSourceImpl(mockHiveInterface);
  });

  final tWeatherCache = WeatherModel.fromJson(
      jsonDecode(fixture('weather_cache.json')) as Map<String, dynamic>);
  group('cacheWeather', () {
    test('should cache weather', () async {
      //arrange
      when(mockHiveInterface.openBox(any))
          .thenAnswer((realInvocation) async => mockHiveBox);
      //act
      await weatherLocalDataSourceImpl.cacheWeather(tWeatherCache);
      //assert
      verify(mockHiveInterface.openBox(any));
      verify(mockHiveBox.put(Keys.weatherCache, jsonEncode(tWeatherCache)));
    });

    test(
      'should return weather cache when call get last weather if cache exist',
      () async {
        //arrange
        when(mockHiveInterface.openBox(any))
            .thenAnswer((realInvocation) async => mockHiveBox);
        when(mockHiveBox.get(Keys.weatherCache))
            .thenAnswer((realInvocation) async => tWeatherCache.toJson());
        //act
        final result = await weatherLocalDataSourceImpl.getLastWeather();
        //assert
        verify(mockHiveInterface.openBox(any));
        verify(mockHiveBox.get(Keys.weatherCache));
        expect(result, equals(tWeatherCache));
      },
    );
  });
}
