
import 'package:drift/drift.dart';
import 'package:weather_app/data/model/db/season_model_db.dart';

class Month extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get seasonId => integer().references(Season, #id)();
  TextColumn get name => text().unique()();
}