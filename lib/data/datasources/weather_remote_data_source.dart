import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/network/api_client.dart';
import 'package:flutter_clean_architecture/core/error/exception.dart';
import 'package:flutter_clean_architecture/data/models/weather/weather_model.dart';

abstract class WeatherRemoteDataSource {
  Future<WeatherModel> getCurrentWeather(String country);
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final Dio _dio;

  WeatherRemoteDataSourceImpl(this._dio);

  // Endpoint
  static const pathCurrentWeather = '/current.json';

  @override
  Future<WeatherModel> getCurrentWeather(String country) async {
    try {
      final result = await _dio.get(pathCurrentWeather, queryParameters: {
        "q": country,
        "aqi": "no",
      });
      return WeatherModel.fromJson(result.data);
    } on DioError catch(e) {
      throw ServerException();
    }
  }
}
