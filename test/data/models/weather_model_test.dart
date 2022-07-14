import 'dart:convert';

import 'package:flutter_clean_architecture/data/models/weather/condition_model.dart';
import 'package:flutter_clean_architecture/data/models/weather/current_model.dart';
import 'package:flutter_clean_architecture/data/models/weather/location_model.dart';
import 'package:flutter_clean_architecture/data/models/weather/weather_model.dart';
import 'package:flutter_clean_architecture/domain/entities/weather/weather.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  const tWeatherModel = WeatherModel(
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
  test('Should be subclass of Weather entity', () async {
    expect(tWeatherModel, isA<Weather>());
  });

  group('fromJson', () {
    test('Should be return model valid', () async {
      //arrange
      final Map<String, dynamic> jsonMap = json.decode(fixture('weather.json'));
      //act
      final result = WeatherModel.fromJson(jsonMap);
      //assert
      expect(result, tWeatherModel);
    });
  });
}
