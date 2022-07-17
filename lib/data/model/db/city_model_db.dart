
import 'package:drift/drift.dart';

class City extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}