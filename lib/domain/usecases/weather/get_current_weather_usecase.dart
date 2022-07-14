import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/error/failure.dart';
import 'package:flutter_clean_architecture/core/usecases/usecase.dart';
import 'package:flutter_clean_architecture/domain/entities/weather/weather.dart';
import 'package:flutter_clean_architecture/domain/repositories/weather_repository.dart';

class GetCurrentWeatherUsecase implements Usecase<Weather, String> {
  final WeatherRepository _weatherRepository;

  const GetCurrentWeatherUsecase(this._weatherRepository);

  @override
  Future<Either<Failure, Weather>> call(String country) {
    return _weatherRepository.getCurrentWeather(country);
  }
}
