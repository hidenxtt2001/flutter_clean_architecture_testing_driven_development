import 'package:bloc/bloc.dart';
import 'package:flutter_clean_architecture/core/error/failure.dart';
import 'package:flutter_clean_architecture/data/models/weather/weather_model.dart';
import 'package:flutter_clean_architecture/domain/repositories/weather_repository.dart';
import 'package:flutter_clean_architecture/domain/usecases/weather/get_current_weather_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/weather/weather.dart';
import '../../../utils/utils.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';
const String CONNECTION_FAILURE_MESSAGE = 'Connection Failure';
const String DATABASE_FAILURE_MESSAGE = 'Database Failure';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetCurrentWeatherUsecase getCurrentWeatherUsecase;
  HomeBloc({required this.getCurrentWeatherUsecase})
      : super(const HomeState.initial()) {
    on<HomeEventLoadCurrentWeather>((event, emit) async {
      emit(const HomeState.loadingProgress());
      final result = await getCurrentWeatherUsecase.call(event.location);
      result.fold((l) {
        emit(HomeState.fetchWeatherFailed(_mapFailureToMessage(l)));
      }, (r) {
        emit(HomeState.fetchWeatherSuccessed(r));
      });
    });
  }
}

String _mapFailureToMessage(Failure fail) {
  switch (fail.runtimeType) {
    case ServerFailure:
      return SERVER_FAILURE_MESSAGE;
    case CacheFailure:
      return CACHE_FAILURE_MESSAGE;
    case ConnectionFailure:
      return CONNECTION_FAILURE_MESSAGE;
    case DatabaseFailure:
      return DATABASE_FAILURE_MESSAGE;
  }
  return fail.toString();
}
