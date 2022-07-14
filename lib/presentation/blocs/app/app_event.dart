part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.locateChanged(Locale locale) = _AppEventLocateChanged;
}
