

import 'package:drift/drift.dart';
import 'package:weather_app/data/model/db/city_model_db.dart';
import 'package:weather_app/data/model/db/month_model_db.dart';
import 'package:weather_app/data/model/db/season_model_db.dart';
import 'package:weather_app/data/model/db/temperature_model_db.dart';
import 'package:weather_app/data/weather_app_db.dart';

part 'city_repository.g.dart';

@DriftAccessor(tables: [City, Season, Month, Temperature])
class CityRepository extends DatabaseAccessor<WeatherAppDb> with _$CityRepositoryMixin {
  CityRepository(super.attachedDatabase);

  Future<void> populateDatabaseIfNeeded() async {
    final citiesCountExpr = city.id.count();
    final query = selectOnly(city)
      ..addColumns([citiesCountExpr]);
    var citiesCount = await query.map((row) => row.read(citiesCountExpr)).getSingle();
    //if table already populated return
    if (citiesCount != 0) return;

    await batch((batch) {
      batch.insertAll(city, [
        CityCompanion.insert(name: "Bangkok", id: const Value(1)),
        CityCompanion.insert(name: "Trat", id: const Value(2)),
        CityCompanion.insert(name: "Chiang Rai", id: const Value(3))
      ]);
      batch.insertAll(season, [
        SeasonCompanion.insert(name: "Winter", id: const Value(1)),
        SeasonCompanion.insert(name: "Spring", id: const Value(2)),
        SeasonCompanion.insert(name: "Summer", id: const Value(3)),
        SeasonCompanion.insert(name: "Autumn", id: const Value(4)),
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
    });
  }
}