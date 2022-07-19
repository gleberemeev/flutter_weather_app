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
  final _format = Rx(TemperatureDisplayFormat.celsius);
  final TemperatureDisplayDecorator _temperatureDisplayDecorator = TemperatureDisplayDecorator();
  final CityRepository _repository = Get.find();

  @override
  void onReady() async {
    super.onReady();
    await _repository.populateDatabaseIfNeeded();
    final cities = await _repository.fetchAllCities();
    final seasons = await _repository.fetchAllSeasons();
    final selectedCityData = await _repository.fetchSelectedCityData();
    if (selectedCityData == null) return;

    state.value = _mapFromDomain(cities, seasons, selectedCityData, _format.value);

    _repository.listenCityUpdates().listen((event) {
      _updateSelectedCityData();
    });
    _repository.listenTemperatureUpdates().listen((event) {
      _updateSelectedCityData();
    });
    _format.listen((newValue) {
      _updateWithTemperatureFormat(newValue);
    });
  }

  void _updateSelectedCityData() async {
    final selectedCityData = await _repository.fetchSelectedCityData();
    if (selectedCityData == null) return;

    _updateFromDomain(selectedCityData);
  }

  void onSeasonChanged(String? season) async {
    developer.log("on season changed to $season");
    final String? previousSelectedSeason = state.value.selectedSeason;
    if (season != null && previousSelectedSeason != null) {
      await _repository.setSeasonSelected(season, previousSelectedSeason);
    }
    if (season != null) {
      final seasonChangedDomain = await _repository.fetchCityDataBySeason(season);
      final cities = await _repository.fetchAllCities();
      final seasons = await _repository.fetchAllSeasons();
      if (seasonChangedDomain != null) {
        snackbarMessage.value = _temperatureDisplayDecorator.printTemperature(
            seasonChangedDomain.temperature, _format.value
        );
        state.value = _mapFromDomain(cities, seasons, seasonChangedDomain, _format.value);
      }
    }
  }

  void onCityChanged(String? city) async {
    developer.log("on city changed to $city");
    final String? previousSelectedCity = state.value.selectedCity;

    if (city != null && previousSelectedCity != null) {
      await _repository.setCitySelected(city, previousSelectedCity);
    }
    if (city != null) {
      final cityChangedDomain = await _repository.fetchCityDataByCity(city);
      final cities = await _repository.fetchAllCities();
      final seasons = await _repository.fetchAllSeasons();
      if (cityChangedDomain != null) {
        snackbarMessage.value = snackbarMessage.value = _temperatureDisplayDecorator.printTemperature(
            cityChangedDomain.temperature, _format.value
        );
        state.value = _mapFromDomain(cities, seasons, cityChangedDomain, _format.value);
      }
    }
  }

  void _updateWithTemperatureFormat(
      TemperatureDisplayFormat format,
      ) {
    final currentState = state.value;

    final temperatureValue = currentState.temperatureValue;
    final temperature = _temperatureDisplayDecorator.printTemperature(temperatureValue, format);
    final newState = currentState.copyWith(
      temperatureIndicator: temperature,
    );
    state.value = newState;
  }

  void _updateFromDomain(
      CityDataDomain domainModel,
      [TemperatureDisplayFormat format = TemperatureDisplayFormat.celsius]
      ) {
    final temperature = _temperatureDisplayDecorator.printTemperature(domainModel.temperature, format);

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
    final temperature = _temperatureDisplayDecorator.printTemperature(domainModel.temperature, format);

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

  onCelsiusFormatSelected() {
    _format.value = TemperatureDisplayFormat.celsius;
  }

  onFahrenheitFormatSelected() {
    _format.value = TemperatureDisplayFormat.fahrenheit;
  }

  onKelvinFormatSelected() {
    _format.value = TemperatureDisplayFormat.kelvin;
  }
}
