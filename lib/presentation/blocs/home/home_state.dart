part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loadingProgress() = _LoadingProgress;
  const factory HomeState.fetchWeatherSuccessed(Weather weather) =
      _FetchWeatherSuccessed;
  const factory HomeState.fetchWeatherFailed(String message) = _FetchWeatherFailed;
}
