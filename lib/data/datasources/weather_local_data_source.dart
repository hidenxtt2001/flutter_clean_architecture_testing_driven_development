import 'dart:convert';

import 'package:flutter_clean_architecture/data/constants/keys.dart';
import 'package:flutter_clean_architecture/data/models/weather/weather_model.dart';
import 'package:hive/hive.dart';

abstract class WeatherLocalDataSource {
  /// Get the cached  [WeatherModel] which was gotton the last time
  /// the user had an internet connection
  ///
  /// Throws [CacheException] if no cache data is present
  Future<WeatherModel> getLastWeather();

  Future<void> cacheWeather(WeatherModel weatherModel);
}

class WeatherLocalDataSourceImpl implements WeatherLocalDataSource {
  final HiveInterface _hive;

  WeatherLocalDataSourceImpl(this._hive);
  @override
  Future<void> cacheWeather(WeatherModel weatherModel) async {
    final box = await _hive.openBox(Keys.weatherBox);
    await box.put(Keys.weatherCache, jsonEncode(weatherModel));
  }

  @override
  Future<WeatherModel> getLastWeather() async {
    final box = await _hive.openBox(Keys.weatherBox);
    final jsonWeatherCache = await box.get(Keys.weatherCache);
    return WeatherModel.fromJson(jsonWeatherCache);
  }
}
