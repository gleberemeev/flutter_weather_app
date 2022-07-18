import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:weather_app/data/model/db/city_model_db.dart';
import 'package:weather_app/data/model/db/month_model_db.dart';
import 'package:weather_app/data/model/db/season_model_db.dart';
import 'package:weather_app/data/model/db/temperature_model_db.dart';

import 'model/db/city_type_db.dart';

part 'weather_app_db.g.dart';

@DriftDatabase(tables: [City, Season, Month, Temperature, Season, CityType])
class WeatherAppDb extends _$WeatherAppDb {
  WeatherAppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'weather_app.sqlite'));
    return NativeDatabase(file);
  });
}