

import 'package:get/get.dart';
import 'package:weather_app/data/model/state/settings_screen_state.dart';
import 'package:weather_app/data/repository/city_repository.dart';

class SettingsController extends GetxController {
  var state = Rx(SettingsScreenState.empty());
  final CityRepository repository = Get.find();

  void onBackPressed() {
    Get.back();
  }

}