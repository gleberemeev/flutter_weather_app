
import 'package:drift/drift.dart';

import 'city_type_db.dart';


class City extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get cityTypeId => integer().references(CityType, #id)();
  BoolColumn get isSelected => boolean()();
  TextColumn get name => text()();
}