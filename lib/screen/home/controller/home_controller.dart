import 'dart:developer' as developer;

import 'package:get/get.dart';
import 'package:weather_app/data/model/domain/city_data_domain.dart';
import 'package:weather_app/data/model/state/home_screen_state.dart';
import 'package:weather_app/screen/settings/settings_screen.dart';
import 'package:weather_app/util/temperature_display_strategy.dart';

import '../../../data/repository/city_repository.dart';

class HomeController extends GetxController {
  var state = Rx(HomeScreenState.empty());
  var snackbarMessage = Rx("");
  var format = Rx(TemperatureDisplayFormat.celsius);
  final TemperatureDisplayDecorator temperatureDisplayDecorator = TemperatureDisplayDecorator();
  final CityRepository repository = Get.find();

  @override
  void onReady() async {
    super.onReady();
    await repository.populateDatabaseIfNeeded();
    final cities = await repository.fetchAllCities();
    final seasons = await repository.fetchAllSeasons();
    final selectedCityData = await repository.fetchSelectedCityData();
    if (selectedCityData == null) return;

    state.value = _mapFromDomain(cities, seasons, selectedCityData, format.value);

    repository.listenCityUpdates().listen((event) {
      _updateSelectedCityData();
    });
    repository.listenTemperatureUpdates().listen((event) {
      _updateSelectedCityData();
    });
    format.listen((newValue) {
      _updateWithTemperatureFormat(newValue);
    });
  }

  void _updateSelectedCityData() async {
    final selectedCityData = await repository.fetchSelectedCityData();
    if (selectedCityData == null) return;

    _updateFromDomain(selectedCityData);
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
        snackbarMessage.value = temperatureDisplayDecorator.printTemperature(
            seasonChangedDomain.temperature, format.value
        );
        state.value = _mapFromDomain(cities, seasons, seasonChangedDomain, format.value);
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
        snackbarMessage.value = snackbarMessage.value = temperatureDisplayDecorator.printTemperature(
            cityChangedDomain.temperature, format.value
        );
        state.value = _mapFromDomain(cities, seasons, cityChangedDomain, format.value);
      }
    }
  }

  void _updateWithTemperatureFormat(
      TemperatureDisplayFormat format,
      ) {
    final currentState = state.value;

    final temperatureValue = currentState.temperatureValue;
    final temperature = temperatureDisplayDecorator.printTemperature(temperatureValue, format);
    final newState = currentState.copyWith(
      temperatureIndicator: temperature,
    );
    state.value = newState;
  }

  void _updateFromDomain(
      CityDataDomain domainModel,
      [TemperatureDisplayFormat format = TemperatureDisplayFormat.celsius]
      ) {
    final temperature = temperatureDisplayDecorator.printTemperature(domainModel.temperature, format);

    final oldState = state.value;
    final newState = oldState.copyWith(
      temperatureValue: domainModel.temperature,
      temperatureIndicator: temperature,
      cityType: domainModel.cityType,
      selectedSeason: domainModel.seasonName,
      selectedCity: domainModel.cityName);
    state.value = newState;
  }

  HomeScreenState _mapFromDomain(
      List<String> cities,
      List<String> seasons,
      CityDataDomain domainModel,
      [TemperatureDisplayFormat format = TemperatureDisplayFormat.celsius]
      ) {
    final temperature = temperatureDisplayDecorator.printTemperature(domainModel.temperature, format);

    return HomeScreenState(
        temperatureValue: domainModel.temperature,
        cities: cities,
        seasons: seasons,
        temperatureIndicator: temperature,
        cityType: domainModel.cityType,
        selectedSeason: domainModel.seasonName,
        selectedCity: domainModel.cityName);
  }

  void navigateToSettings() {
    Get.to(SettingsScreen());
  }
}
