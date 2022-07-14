part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({@Default(Locale('en')) Locale locale}) =
      _AppStateInitial;
}
