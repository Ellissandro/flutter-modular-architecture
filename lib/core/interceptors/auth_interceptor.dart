import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wakke_manager_v2/core/constants/app_colors.dart';

class AuthInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({"Authorization": "Bearer token aqui"});
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    ScaffoldMessenger.of(err.requestOptions.extra['context'])
        .showSnackBar(SnackBar(
      content: Text(err.message),
      backgroundColor: AppColors.red,
    ));
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    print(response);
    super.onResponse(response, handler);
  }
}
