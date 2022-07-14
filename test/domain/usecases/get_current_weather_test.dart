import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/domain/entities/weather/condition.dart';
import 'package:flutter_clean_architecture/domain/entities/weather/current.dart';
import 'package:flutter_clean_architecture/domain/entities/weather/location.dart';
import 'package:flutter_clean_architecture/domain/entities/weather/weather.dart';
import 'package:flutter_clean_architecture/domain/repositories/weather_repository.dart';
import 'package:flutter_clean_architecture/domain/usecases/weather/get_current_weather_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_current_weather_test.mocks.dart';

@GenerateMocks([
  WeatherRepository,
])
void main() {
  late MockWeatherRepository mockWeatherRepository;
  late GetCurrentWeatherUsecase usecase;

  var tWeather = const Weather(
    location: Location(
        name: "Hanoi",
        region: "",
        country: "Vietnam",
        lat: 21.03,
        lon: 105.85,
        tzId: "Asia/Ho_Chi_Minh",
        localtimeEpoch: 1649584618,
        localtime: "2022-04-10 16:56"),
    current: Current(
        lastUpdatedEpoch: 1649583900,
        lastUpdated: "2022-04-10 16:45",
        tempC: 27.0,
        tempF: 80.6,
        isDay: 1,
        condition: Condition(
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

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    usecase = GetCurrentWeatherUsecase(mockWeatherRepository);
  });

  test('Get weather of Location', () async {
    // arrange
    when(mockWeatherRepository.getCurrentWeather('vietnam'))
        .thenAnswer((realInvocation) async => Right(tWeather));

    // act
    final result = await usecase.call('vietnam');

    // assert
    expect(result, Right(tWeather));
    verify(mockWeatherRepository.getCurrentWeather('vietnam'));
    verifyNoMoreInteractions(mockWeatherRepository);
  });
}
