import 'package:flutter/cupertino.dart';
import 'package:wakke_manager_v2/modules/home/models/apiadvisor_model.dart';
import 'package:wakke_manager_v2/modules/home/repositories/apiadvisor_repository_interface.dart';

class ApiAdvisorViewModel {
  final IApiAdvisor respositoy;

  final apiAdvisorModel = ValueNotifier<List<ApiAdvisorModel>>([]);

  ApiAdvisorViewModel(this.respositoy);

  fill() async {
    apiAdvisorModel.value = await respositoy.getTime();
  }
}
