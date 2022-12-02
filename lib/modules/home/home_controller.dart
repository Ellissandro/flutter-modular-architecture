import 'package:flutter/cupertino.dart';
import 'package:wakke_manager_v2/modules/home/models/apiadvisor_model.dart';
import 'package:wakke_manager_v2/modules/home/viewmodels/apiadvisor_view_model.dart';

class HomeController {
  final ApiAdvisorViewModel viewModel;

  HomeController(this.viewModel);

  ValueNotifier<List<ApiAdvisorModel>> get time => viewModel.apiAdvisorModel;

  getTime() {
    viewModel.fill();
  }
}
