import 'package:dio/dio.dart';
import 'package:wakke_manager_v2/core/interceptors/auth_interceptor.dart';
import 'package:wakke_manager_v2/core/interfaces/client_http_interface.dart';

class DioHttpService implements IClientHttp {
  final Dio dio = Dio();

  DioHttpService() {
    dio.interceptors.add(AuthInterceptor());
  }

  @override
  Future get(String url) async {
    var response = await dio.get(url);
    return response.data;
  }

  @override
  Future post(String url) async {
    var response = await dio.post(url);
    return response.data;
  }

  @override
  Future put(String url) async {
    var response = await dio.put(url);
    return response.data;
  }

  @override
  Future delete(String url) async {
    var response = await dio.delete(url);
    return response.data;
  }
}
