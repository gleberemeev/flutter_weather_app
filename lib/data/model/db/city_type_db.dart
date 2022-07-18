
import 'package:drift/drift.dart';

class CityType extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().unique()();
}