import 'package:wakke_manager_v2/modules/home/models/apiadvisor_model.dart';

abstract class IApiAdvisor {
  Future<List<ApiAdvisorModel>> getTime();
}
