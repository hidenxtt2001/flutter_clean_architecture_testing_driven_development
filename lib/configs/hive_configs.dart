import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../data/constants/keys.dart';
import '../injection/dependency_injection.dart';

class HiveConfigs {
  
  Future<void> initializeHiveConfigs() async {
    getIt.get<HiveInterface>().initFlutter();

    final key = await getSecureKey();
    await Hive.openBox(Keys.weatherBox, encryptionCipher: HiveAesCipher(key));
  }

  Future<List<int>> getSecureKey() async {
    const secureStorage = FlutterSecureStorage();
    // if key not exists return null
    final encryptionKey = await secureStorage.read(key: 'key');
    List<int> key = [];
    if (encryptionKey == null) {
      key = Hive.generateSecureKey();
      await secureStorage.write(
        key: 'key',
        value: base64UrlEncode(key),
      );
    } else {
      key = base64Url.decode(encryptionKey);
    }
    return key;
  }
}
