import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/app.dart';
import 'package:flutter_clean_architecture/presentation/blocs/app_bloc_observer.dart';

import 'configs/app_config.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfigs.initializeApp();

  BlocOverrides.runZoned(
    () => runApp(const BaseApp()),
    blocObserver: AppBlocObserver(),
  );
}
