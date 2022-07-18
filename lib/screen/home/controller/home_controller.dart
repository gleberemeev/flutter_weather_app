import 'dart:developer' as developer;

import 'package:get/get.dart';
import 'package:weather_app/data/model/domain/city_data_domain.dart';
import 'package:weather_app/data/model/state/home_screen_state.dart';
import 'package:weather_app/data/repository/city_repository.dart';
import 'package:weather_app/util/extensions.dart';

class HomeController extends GetxController {
  static const int temperatureTextLength = 5;

  var state = Rx(HomeScreenState.empty());
  var snackbarMessage = Rx("");
  final CityRepository repository = Get.find();

  @override
  void onReady() async {
    super.onReady();
    await repository.populateDatabaseIfNeeded();
    final cities = await repository.fetchAllCities();
    final seasons = await repository.fetchAllSeasons();
    final selectedCityData = await repository.fetchSelectedCityData();
    if (selectedCityData == null) return;

    state.value = _mapFromDomain(cities, seasons, selectedCityData);
  }

  void onSeasonChanged(String? season) async {
    developer.log("on season changed to $season");
    final String? previousSelectedSeason = state.value.selectedSeason;
    if (season != null && previousSelectedSeason != null) {
      await repository.setSeasonSelected(season, previousSelectedSeason);
    }
    if (season != null) {
      final seasonChangedDomain = await repository.fetchCityDataBySeason(season);
      final cities = await repository.fetchAllCities();
      final seasons = await repository.fetchAllSeasons();
      if (seasonChangedDomain != null) {
        snackbarMessage.value = seasonChangedDomain.temperature
            .toString()
            .truncate(max: temperatureTextLength);
        state.value = _mapFromDomain(cities, seasons, seasonChangedDomain);
      }
    }
  }

  void onCityChanged(String? city) async {
    developer.log("on city changed to $city");
    final String? previousSelectedCity = state.value.selectedCity;

    if (city != null && previousSelectedCity != null) {
      await repository.setCitySelected(city, previousSelectedCity);
    }
    if (city != null) {
      final cityChangedDomain = await repository.fetchCityDataByCity(city);
      final cities = await repository.fetchAllCities();
      final seasons = await repository.fetchAllSeasons();
      if (cityChangedDomain != null) {
        snackbarMessage.value = cityChangedDomain.temperature
            .toString()
            .truncate(max: temperatureTextLength);
        state.value = _mapFromDomain(cities, seasons, cityChangedDomain);
      }
    }
  }

  HomeScreenState _mapFromDomain(
      List<String> cities,
      List<String> seasons,
      CityDataDomain domainModel,
      ) {
    final temperature = domainModel.temperature
        .toString()
        .truncate(max: temperatureTextLength);

    return HomeScreenState(
        cities: cities,
        seasons: seasons,
        temperatureIndicator: temperature,
        cityType: domainModel.cityType,
        selectedSeason: domainModel.seasonName,
        selectedCity: domainModel.cityName);
  }
}
