import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/utils/utils.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    printLog(this, message: '[BlocChange] $change');
    super.onChange(bloc, change);
  }

  @override
  void onClose(BlocBase bloc) {
    printLog(this, message: '[BlocClose] $bloc');
    super.onClose(bloc);
  }

  @override
  void onCreate(BlocBase bloc) {
    printLog(this, message: '[BlocCreate] $bloc');
    super.onCreate(bloc);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    printLog(this,
        message: '[BlocError] $bloc', error: error, trace: stackTrace);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    printLog(this, message: '[BlocEvent] $event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    printLog(this, message: '[BlocTransition] $transition');
    super.onTransition(bloc, transition);
  }
}
