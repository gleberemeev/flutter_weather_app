import 'package:get/get.dart';
import 'package:weather_app/data/model/state/home_screen_state.dart';
import 'package:weather_app/data/repository/city_repository.dart';

import 'dart:developer' as developer;

class HomeController extends GetxController {
  static const int temperatureTextLength = 5;

  var state = Rx(HomeScreenState.empty());
  final CityRepository repository = Get.find();

  @override
  void onReady() async {
    super.onReady();
    await repository.populateDatabaseIfNeeded();
    final cities = await repository.fetchAllCities();
    final seasons = await repository.fetchAllSeasons();
    final selectedCityData = await repository.fetchSelectedCityData();
    if (selectedCityData == null) return;

    final temperature = selectedCityData.temperature
        .toString()
        .substring(0, temperatureTextLength);

    state.value = HomeScreenState(
        cities: cities,
        seasons: seasons,
        temperatureIndicator: temperature,
        cityType: selectedCityData.cityType,
        selectedSeason: selectedCityData.seasonName,
        selectedCity: selectedCityData.cityName);
  }

  void onSeasonChanged(String? season) {
    developer.log("on season changed");
    state.value = state.value.copyWith(selectedSeason: season);
  }

  void onCityChanged(String? city) {
    developer.log("on city changed");
    state.value = state.value.copyWith(selectedCity: city);
  }
}