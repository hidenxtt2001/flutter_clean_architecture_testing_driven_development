import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/network/api_client.dart';
import 'package:flutter_clean_architecture/data/constants/constants.dart';
import 'package:flutter_clean_architecture/data/constants/keys.dart';
import 'package:flutter_clean_architecture/injection/dependency_injection.dart';
import 'package:flutter_clean_architecture/utils/utils.dart';
import 'package:hive/hive.dart';

import '../../configs/secret_config.dart';

class DioInterceptor extends QueuedInterceptorsWrapper {
  final JsonEncoder _encoder = const JsonEncoder.withIndent('  ');

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    // // Resfesh token if token is expire
    // // Recall request if token is renew
    // if (err.response?.statusCode == 401) {
    //   try {
    //     await _refeshToken();
    //     return handler.resolve(await _recallResponse(err.requestOptions));
    //   } on DioError catch (e) {
    //     handler.next(e);
    //   } on Exception catch (e) {
    //     printLog(this, message: '[DioError]', error: e);
    //   }
    // }

    printLog(this,
        message:
            '[DioError] Path => ${err.requestOptions.uri} \n${_encoder.convert(err.response?.data)}',
        error: err,
        trace: err.stackTrace);
    return handler.next(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // // Setup token if token exist in local
    // // when request data
    // final box = await Hive.openBox(Keys.client);
    // final token = await box.get(Keys.accessToken, defaultValue: "");
    // options.headers["Authorization"] = "Bearer $token";

    // Setup key api when request data
    final apiKey = (await SecretLoader().load()).apiKey;
    options.queryParameters['key'] = apiKey;

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    printLog(this,
        message:
            '[DioResponse] Path => ${response.requestOptions.uri} \n${_encoder.convert(response.data)}');
    return handler.next(response);
  }

  Future<Response<dynamic>> _recallResponse(
      RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return getIt.get<Dio>().request<dynamic>(requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
  }

  Future<void> _refeshToken() async {
    Dio dio = getIt.get<Dio>();
    final box = await Hive.openBox(Keys.client);
    final refreshToken = await box.get(Keys.refreshToken);
    if (refreshToken == null) throw Exception('Don\'t have refresh token');
    final result =
        dio.post('/auth/refesh', data: {'refeshToken': refreshToken});
    await box.put(Keys.accessToken, result);
  }
}
