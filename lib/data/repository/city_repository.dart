import 'dart:developer' as developer;

import 'package:drift/drift.dart';
import 'package:weather_app/data/model/db/city_model_db.dart';
import 'package:weather_app/data/model/db/city_type_db.dart';
import 'package:weather_app/data/model/db/month_model_db.dart';
import 'package:weather_app/data/model/db/season_model_db.dart';
import 'package:weather_app/data/model/db/temperature_model_db.dart';
import 'package:weather_app/data/model/domain/city_data_detailed_domain.dart';
import 'package:weather_app/data/model/domain/save_city_data_domain.dart';
import 'package:weather_app/data/weather_app_db.dart';

import '../model/domain/city_data_domain.dart';

part 'city_repository.g.dart';

@DriftAccessor(tables: [City, Season, Month, Temperature, CityType])
class CityRepository extends DatabaseAccessor<WeatherAppDb> with _$CityRepositoryMixin {
  CityRepository(super.attachedDatabase);

  Future<void> populateDatabaseIfNeeded() async {
    final citiesCountExpr = city.id.count();
    final query = selectOnly(city)
      ..addColumns([citiesCountExpr]);
    var citiesCount = await query.map((row) => row.read(citiesCountExpr)).getSingle();
    //if table already populated return
    if (citiesCount != 0) {
      developer.log("database is already set");
      return;
    }

    await batch((batch) {
      batch.insertAll(cityType, [
        CityTypeCompanion.insert(name: "large", id: const Value(1)),
        CityTypeCompanion.insert(name: "medium", id: const Value(2)),
        CityTypeCompanion.insert(name: "small", id: const Value(3)),
      ]);
      batch.insertAll(city, [
        CityCompanion.insert(name: "Bangkok", id: const Value(1), isSelected: true, cityTypeId: 1),
        CityCompanion.insert(name: "Trat", id: const Value(2), isSelected: false, cityTypeId: 2),
        CityCompanion.insert(name: "Chiang Rai", id: const Value(3), isSelected: false, cityTypeId: 3)
      ]);
      batch.insertAll(season, [
        SeasonCompanion.insert(name: "Winter", id: const Value(1), isSelected: true),
        SeasonCompanion.insert(name: "Spring", id: const Value(2), isSelected: false),
        SeasonCompanion.insert(name: "Summer", id: const Value(3), isSelected: false),
        SeasonCompanion.insert(name: "Autumn", id: const Value(4), isSelected: false),
      ]);
      batch.insertAll(month, [
        MonthCompanion.insert(seasonId: 1, name: "January", id: const Value(1)),
        MonthCompanion.insert(seasonId: 1, name: "February", id: const Value(2)),
        MonthCompanion.insert(seasonId: 2, name: "March", id: const Value(3)),
        MonthCompanion.insert(seasonId: 2, name: "April", id: const Value(4)),
        MonthCompanion.insert(seasonId: 2, name: "May", id: const Value(5)),
        MonthCompanion.insert(seasonId: 3, name: "June", id: const Value(6)),
        MonthCompanion.insert(seasonId: 3, name: "July", id: const Value(7)),
        MonthCompanion.insert(seasonId: 3, name: "August", id: const Value(8)),
        MonthCompanion.insert(seasonId: 4, name: "September", id: const Value(9)),
        MonthCompanion.insert(seasonId: 4, name: "October", id: const Value(10)),
        MonthCompanion.insert(seasonId: 4, name: "November", id: const Value(11)),
        MonthCompanion.insert(seasonId: 1, name: "December", id: const Value(12)),
      ]);
      batch.insertAll(temperature, [
        //Bangkok
        TemperatureCompanion.insert(monthId: 1, cityId: 1, value: 20),
        TemperatureCompanion.insert(monthId: 2, cityId: 1, value: 22),
        TemperatureCompanion.insert(monthId: 3, cityId: 1, value: 25),

        TemperatureCompanion.insert(monthId: 4, cityId: 1, value: 30),
        TemperatureCompanion.insert(monthId: 5, cityId: 1, value: 35),
        TemperatureCompanion.insert(monthId: 6, cityId: 1, value: 40),

        TemperatureCompanion.insert(monthId: 7, cityId: 1, value: 45),
        TemperatureCompanion.insert(monthId: 8, cityId: 1, value: 40),
        TemperatureCompanion.insert(monthId: 9, cityId: 1, value: 35),

        TemperatureCompanion.insert(monthId: 10, cityId: 1, value: 30),
        TemperatureCompanion.insert(monthId: 11, cityId: 1, value: 25),
        TemperatureCompanion.insert(monthId: 12, cityId: 1, value: 20),

        //Trat
        TemperatureCompanion.insert(monthId: 1, cityId: 2, value: 25),
        TemperatureCompanion.insert(monthId: 2, cityId: 2, value: 27),
        TemperatureCompanion.insert(monthId: 3, cityId: 2, value: 30),

        TemperatureCompanion.insert(monthId: 4, cityId: 2, value: 35),
        TemperatureCompanion.insert(monthId: 5, cityId: 2, value: 40),
        TemperatureCompanion.insert(monthId: 6, cityId: 2, value: 45),

        TemperatureCompanion.insert(monthId: 7, cityId: 2, value: 50),
        TemperatureCompanion.insert(monthId: 8, cityId: 2, value: 45),
        TemperatureCompanion.insert(monthId: 9, cityId: 2, value: 40),

        TemperatureCompanion.insert(monthId: 10, cityId: 2, value: 35),
        TemperatureCompanion.insert(monthId: 11, cityId: 2, value: 30),
        TemperatureCompanion.insert(monthId: 12, cityId: 2, value: 25),

        //Chiang Rai
        TemperatureCompanion.insert(monthId: 1, cityId: 3, value: 0),
        TemperatureCompanion.insert(monthId: 2, cityId: 3, value: 5),
        TemperatureCompanion.insert(monthId: 3, cityId: 3, value: 10),

        TemperatureCompanion.insert(monthId: 4, cityId: 3, value: 15),
        TemperatureCompanion.insert(monthId: 5, cityId: 3, value: 20),
        TemperatureCompanion.insert(monthId: 6, cityId: 3, value: 25),

        TemperatureCompanion.insert(monthId: 7, cityId: 3, value: 30),
        TemperatureCompanion.insert(monthId: 8, cityId: 3, value: 25),
        TemperatureCompanion.insert(monthId: 9, cityId: 3, value: 20),

        TemperatureCompanion.insert(monthId: 10, cityId: 3, value: 15),
        TemperatureCompanion.insert(monthId: 11, cityId: 3, value: 10),
        TemperatureCompanion.insert(monthId: 12, cityId: 3, value: 5),
      ]);
      developer.log("database populated");
    });
  }

  Future<List<String>> fetchAllMonths() async {
    return await (select(month).map((p0) => p0.name)).get();
  }

  Future<List<String>> fetchAllCities() async {
    return (select(city).map((p0) => p0.name)).get();
  }

  Future<List<String>> fetchAllSeasons() async {
    return (select(season).map((p0) => p0.name)).get();
  }

  Future<CityDataDomain?> fetchCityDataByCity(String cityName) async {
    return _fetchCityData(cityName, null);
  }

  Future<CityDataDomain?> fetchCityDataBySeason(String seasonName) async {
    return _fetchCityData(null, seasonName);
  }

  Future<CityDataDomain?> fetchSelectedCityData() async {
    return _fetchCityData(null, null);
  }

  Future<void> setCitySelected(String selectedCityName, String previousCityName) async {
    final selectedCityResult = await(select(city)
      ..where((tbl) => tbl.name.equals(selectedCityName))).get();
    if (selectedCityResult.isEmpty) return;

    final selectedCity = selectedCityResult[0].copyWith(isSelected: true);
    into(city).insertOnConflictUpdate(selectedCity);

    final unselectedCityResult = await(select(city)
      ..where((tbl) => tbl.name.equals(previousCityName))).get();
    if (unselectedCityResult.isEmpty) return;

    final unselectedCity = unselectedCityResult[0].copyWith(isSelected: false);
    into(city).insertOnConflictUpdate(unselectedCity);
  }

  Future<void> setSeasonSelected(String selectedSeasonName, String previousSeasonName) async {
    final selectedSeasonResult = await(select(season)
      ..where((tbl) => tbl.name.equals(selectedSeasonName))).get();
    if (selectedSeasonResult.isEmpty) return;

    final selectedSeason = selectedSeasonResult[0].copyWith(isSelected: true);
    into(season).insertOnConflictUpdate(selectedSeason);

    final unselectedSeasonResult = await(select(season)
      ..where((tbl) => tbl.name.equals(previousSeasonName))).get();
    if (unselectedSeasonResult.isEmpty) return;

    final unselectedSeason = unselectedSeasonResult[0].copyWith(isSelected: false);
    into(season).insertOnConflictUpdate(unselectedSeason);
  }

  Future<CityDataDomain?> _fetchCityData(String? cityName, String? seasonName) async {
    final selectedCitiesResult = await (select(city)
      ..where((tbl) {
        if (cityName == null) {
          return tbl.isSelected.equals(true);
        } else {
          return tbl.name.equals(cityName);
        }
      })).get();
    if (selectedCitiesResult.isEmpty) return null;

    final selectedCity = selectedCitiesResult[0];
    final selectedSeasonsResult = await (select(season)
      ..where((tbl) {
        if (seasonName == null) {
          return tbl.isSelected.equals(true);
        } else {
          return tbl.name.equals(seasonName);
        }
      })).get();
    if (selectedSeasonsResult.isEmpty) return null;

    final selectedCityTypeResult = await (select(cityType)
      ..where((tbl) => tbl.id.equals(selectedCity.id))).get();
    if (selectedCityTypeResult.isEmpty) return null;
    final selectedCityType = selectedCityTypeResult[0];

    final selectedSeason = selectedSeasonsResult[0];
    final List<MonthData> monthsResult =
    await (select(month)
      ..where((tbl) => tbl.seasonId.equals(selectedSeason.id))).get();
    final monthsIds = monthsResult.map((e) => e.id);
    final temperatureResult = await (select(temperature)
      ..where((tbl) => tbl.monthId.isIn(monthsIds))..where((tbl) => tbl.cityId.equals(selectedCity.id)))
        .get();
    final monthsCount = monthsIds.length;
    final averageTemperature =
        temperatureResult.map((e) => e.value).reduce((value, element) => value + element) / monthsCount;
    return CityDataDomain(
      cityName: selectedCity.name,
      seasonName: selectedSeason.name,
      cityType: selectedCityType.name,
      temperature: averageTemperature,
    );
  }

  Future<CityDataDetailedDomain?> fetchCityDetailedData() async {
    final selectedCitiesResult = await (select(city)
      ..where((tbl) => tbl.isSelected.equals(true))).get();
    if (selectedCitiesResult.isEmpty) return null;
    final selectedCity = selectedCitiesResult[0];

    final selectedCityTypeResult = await (select(cityType)
      ..where((tbl) => tbl.id.equals(selectedCity.id))).get();
    if (selectedCityTypeResult.isEmpty) return null;
    final selectedCityType = selectedCityTypeResult[0];

    final temperatureResult = await (select(temperature)
      ..where((tbl) => tbl.cityId.equals(selectedCity.id)))
        .get();
    final monthsResult = await (select(month)).get();
    final Map<String, int> temperatureMap = {
      for (var item in temperatureResult)
        monthsResult
            .firstWhere((element) => element.id == item.id)
            .name: item.value
    };

    final cityTypes = await (select(cityType)).get();
    final cities = await(select(city)).get();

    return CityDataDetailedDomain(
        cities: cities.map((e) => e.name),
        cityTypes: cityTypes.map((e) => e.name),
        cityName: selectedCity.name,
        cityType: selectedCityType.name,
        monthlyTemperatures: temperatureMap
    );
  }

  Future<void> saveData(SaveCityDataDomain saveDataRequest) async {
    final cityResult = await (select(city)..where((tbl) => tbl.name.equals(saveDataRequest.cityName))).get();
    if (cityResult.isEmpty) return;

    final cityTypeResult = await (select(cityType)..where((tbl) => tbl.name.equals(saveDataRequest.cityType))).get();
    if (cityTypeResult.isEmpty) return;

    city.insertOnConflictUpdate(cityResult.first.copyWith(
      cityTypeId: cityTypeResult.first.id,
    ));

    final temperaturesResult = await (select(temperature)..where((tbl) => tbl.cityId.equals(cityResult.first.id))).get();
    final monthsResult = await (select(month)).get();
    final temperaturesMap = saveDataRequest.monthlyTemperatures;
    for (var temperatureEntity in temperaturesResult) {
      final monthName = monthsResult.firstWhere((element) => element.id == temperatureEntity.monthId).name;
      final newTemperature = temperaturesMap[monthName];
      final newTemperatureEntity = temperatureEntity.copyWith(
        value: newTemperature,
      );
      temperature.insertOnConflictUpdate(newTemperatureEntity);
    }
  }
}
