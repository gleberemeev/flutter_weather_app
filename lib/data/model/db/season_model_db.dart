
import 'package:drift/drift.dart';

class Season extends Table {
  IntColumn get id => integer().autoIncrement()();
  BoolColumn get isSelected => boolean()();
  TextColumn get name => text().unique()();
}