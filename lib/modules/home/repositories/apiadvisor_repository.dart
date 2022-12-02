import 'package:wakke_manager_v2/core/interfaces/client_http_interface.dart';
import 'package:wakke_manager_v2/modules/home/models/apiadvisor_model.dart';
import 'package:wakke_manager_v2/modules/home/repositories/apiadvisor_repository_interface.dart';

class ApiAdvisorRepository implements IApiAdvisor {
  final IClientHttp client;

  ApiAdvisorRepository(this.client);

  @override
  Future<List<ApiAdvisorModel>> getTime() async {
    var json = await client.get('https://jsonplaceholder.typicode.com/todos/');
    List<ApiAdvisorModel> model = ApiAdvisorModel.fromJson(json);
    return model;
  }
}
