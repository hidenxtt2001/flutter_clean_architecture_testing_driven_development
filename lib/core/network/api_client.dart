import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/configs/app_config.dart';
import 'package:flutter_clean_architecture/core/network/dio_interceptor.dart';

class ApiClient {
  Dio? _dio;

  Dio getDio() {
    if (_dio == null) {
      final option = BaseOptions(
        baseUrl: apiBaseUrl,
        connectTimeout: 30000,
        receiveTimeout: 30000,
      );
      _dio = Dio(option);
      _dio?.interceptors.add(DioInterceptor());
    }
    return _dio!;
  }

  // #region Client
  static const String _baseUrl = "baseUrl";

  late Map<String, dynamic> _config;

  void setEnvironment(Environment env) {
    switch (env) {
      case Environment.dev:
        _config = devConstants;
        break;
      case Environment.stage:
        _config = stageConstants;
        break;
      case Environment.prod:
        _config = prodConstants;
        break;
    }
  }

  dynamic get apiBaseUrl {
    return _config[_baseUrl];
  }

  Map<String, dynamic> devConstants = {
    _baseUrl: "http://api.weatherapi.com/v1",
  };

  Map<String, dynamic> stageConstants = {
    _baseUrl: "http://api.weatherapi.com/v1",
  };

  Map<String, dynamic> prodConstants = {
    _baseUrl: "http://api.weatherapi.com/v1",
  };
  // #endregion

}
