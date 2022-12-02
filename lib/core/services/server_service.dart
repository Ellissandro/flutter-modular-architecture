import 'package:dio/dio.dart';
import 'package:wakke_manager_v2/environment.dart';

class ServerService {
  String urlManager(String path) {
    return AppEnvironment.apiManager + path;
  }

  BaseOptions addParams(Map<String, dynamic> params) {
    return BaseOptions(
      queryParameters: params,
    );
  }
}
