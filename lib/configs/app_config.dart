import 'dart:io';

import 'package:flutter_clean_architecture/configs/hive_configs.dart';
import 'package:flutter_clean_architecture/core/network/api_client.dart';
import 'package:flutter_clean_architecture/injection/dependency_injection_container.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../injection/dependency_injection.dart';

enum Environment { dev, stage, prod }

class AppConfigs {
  static Future<void> initializeApp() async {
    // Dependency Injection
    configureDependencies();
    initBlocsDI();

    // Client
    getIt.get<ApiClient>().setEnvironment(Environment.dev);

    // Database
    await getIt.get<HiveConfigs>().initializeHiveConfigs();
  }
}
