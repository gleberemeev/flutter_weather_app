

import 'package:drift/drift.dart';
import 'package:weather_app/data/model/db/city_model_db.dart';
import 'package:weather_app/data/model/db/month_model_db.dart';

class Temperature extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get monthId => integer().references(Month, #id)();
  IntColumn get cityId => integer().references(City, #id)();
  IntColumn get value => integer()();
}