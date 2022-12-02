import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wakke_manager_v2/core/constants/app_colors.dart';
import 'package:wakke_manager_v2/core/interfaces/local_storage_interface.dart';

class AuthInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // TODO: PASSAR PARA UM OBSERVABLE
    final localStorage = Modular.get<ILocalStorage>();
    String token = await localStorage.getString('token');

    options.headers.addAll({"Authorization": "bearer $token"});
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
}
