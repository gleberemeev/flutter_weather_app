
import 'package:drift/drift.dart';

class Season extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}