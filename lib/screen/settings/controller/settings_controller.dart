import 'package:fluttertoast/fluttertoast.dart';
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

    await _fetchDetailedData();
  }

  void onBackPressed() {
    Get.back();
  }

  void onCityChanged(String? newValue) async {
    if (newValue == null) return;

    final currentSelectedCity = state.value.selectedCity;
    _repository.setCitySelected(newValue, currentSelectedCity);
    await _fetchDetailedData();
  }

  void onCityTypeChanged(String? newValue) {
    if (newValue == null) return;

    final oldState = state.value.copyWith(selectedCityType: newValue);
    state.value = oldState;
  }

  void saveData() {
    Fluttertoast.showToast(
      msg: "Your data was saved",
      toastLength: Toast.LENGTH_LONG,
    );
    Get.back();
  }

  void onTemperatureChanged(String month, String newTemperature) {
    final oldState = state.value;
    final temperatureMap = oldState.monthlyTemperatures.map((key, value) {
      if (key == month) {
        return MapEntry(key, int.parse(newTemperature));
      } else {
        return MapEntry(key, value);
      }
    });

    temperatureMap[month] = int.parse(newTemperature);
    state.value = oldState.copyWith(
      monthlyTemperatures: temperatureMap,
    );
  }

  Future<void> _fetchDetailedData() async {
    final CityDataDetailedDomain? model = await _repository.fetchCityDetailedData();
    if (model == null) return;

    state.value = _mapFromDomain(model);
  }

  SettingsScreenState _mapFromDomain(CityDataDetailedDomain model) {
    return SettingsScreenState(
        cities: model.cities,
        selectedCity: model.cityName,
        cityTypes: model.cityTypes,
        selectedCityType: model.cityType,
        monthlyTemperatures: model.monthlyTemperatures);
  }
}
