

import 'package:get/get.dart';
import 'package:weather_app/data/model/domain/city_data_detailed_domain.dart';
import 'package:weather_app/data/model/state/settings_screen_state.dart';
import 'package:weather_app/data/repository/city_repository.dart';

class SettingsController extends GetxController {
  var state = Rx(SettingsScreenState.empty());
  final CityRepository _repository = Get.find();

  @override
  void onReady() async {
    super.onReady();

    final CityDataDetailedDomain? model = await _repository.fetchCityDetailedData();
    if (model == null) return;

    state.value = _mapFromDomain(model);
  }

  Future<List<String>> fetchAllMonths() async {
    return await _repository.fetchAllMonths();
  }

  void onBackPressed() {
    Get.back();
  }

  void onCityChanged(String? newValue) {
    //todo on city changed
  }

  void onCityTypeChanged(String? newValue) {

  }

  void saveData() {}

  void onTemperatureChanged(int value, String newTemperature) {

  }

  SettingsScreenState _mapFromDomain(CityDataDetailedDomain model) {
    return SettingsScreenState(
        cities: model.cities,
        selectedCity: model.cityName,
        cityTypes: model.cityTypes,
        selectedCityType: model.cityType,
        monthlyTemperatures: model.monthlyTemperatures
    );
  }
}