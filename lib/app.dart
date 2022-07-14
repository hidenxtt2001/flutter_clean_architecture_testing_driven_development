import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/core/network/api_client.dart';
import 'package:flutter_clean_architecture/data/datasources/weather_local_data_source.dart';
import 'package:flutter_clean_architecture/data/datasources/weather_remote_data_source.dart';
import 'package:flutter_clean_architecture/data/repositories/weather_repository_impl.dart';
import 'package:flutter_clean_architecture/domain/usecases/weather/get_current_weather_usecase.dart';
import 'package:flutter_clean_architecture/generated/l10n.dart';
import 'package:flutter_clean_architecture/injection/dependency_injection.dart';
import 'package:flutter_clean_architecture/presentation/blocs/app/app_bloc.dart';
import 'package:flutter_clean_architecture/presentation/blocs/home/home_bloc.dart';
import 'package:flutter_clean_architecture/presentation/pages/home/home_page.dart';
import 'package:flutter_clean_architecture/routes/app_route.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

class BaseApp extends StatelessWidget {
  const BaseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: const _SetupApp(),
    );
  }
}

class _SetupApp extends StatelessWidget {
  const _SetupApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.get<HomeBloc>(),
        )
      ],
      child: ScreenUtilInit(
        builder: () => MaterialApp(
          title: 'Flutter Clean Architecture',
          locale: context.watch<AppBloc>().state.locale,
          localizationsDelegates: const [
            Lang.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: Lang.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          initialRoute: HomePage.id,
          onGenerateRoute: AppRoute.onGenerateRoute,
          builder: (context, child) {
            if (child == null) {
              debugPrint("Material builder : widget is null");
              return const SizedBox();
            }
            ScreenUtil.setContext(context);
            return child;
          },
        ),
      ),
    );
  }
}
