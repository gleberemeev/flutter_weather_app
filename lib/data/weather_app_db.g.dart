// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_app_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class CityData extends DataClass implements Insertable<CityData> {
  final int id;
  final String name;
  CityData({required this.id, required this.name});
  factory CityData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CityData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  CityCompanion toCompanion(bool nullToAbsent) {
    return CityCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory CityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CityData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  CityData copyWith({int? id, String? name}) => CityData(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('CityData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CityData && other.id == this.id && other.name == this.name);
}

class CityCompanion extends UpdateCompanion<CityData> {
  final Value<int> id;
  final Value<String> name;
  const CityCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  CityCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<CityData> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  CityCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return CityCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CityCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $CityTable extends City with TableInfo<$CityTable, CityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CityTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? 'city';
  @override
  String get actualTableName => 'city';
  @override
  VerificationContext validateIntegrity(Insertable<CityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CityData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CityTable createAlias(String alias) {
    return $CityTable(attachedDatabase, alias);
  }
}

class SeasonData extends DataClass implements Insertable<SeasonData> {
  final int id;
  final String name;
  SeasonData({required this.id, required this.name});
  factory SeasonData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SeasonData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  SeasonCompanion toCompanion(bool nullToAbsent) {
    return SeasonCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory SeasonData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SeasonData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  SeasonData copyWith({int? id, String? name}) => SeasonData(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('SeasonData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SeasonData && other.id == this.id && other.name == this.name);
}

class SeasonCompanion extends UpdateCompanion<SeasonData> {
  final Value<int> id;
  final Value<String> name;
  const SeasonCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  SeasonCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<SeasonData> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  SeasonCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return SeasonCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SeasonCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $SeasonTable extends Season with TableInfo<$SeasonTable, SeasonData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SeasonTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? 'season';
  @override
  String get actualTableName => 'season';
  @override
  VerificationContext validateIntegrity(Insertable<SeasonData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SeasonData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SeasonData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SeasonTable createAlias(String alias) {
    return $SeasonTable(attachedDatabase, alias);
  }
}

class MonthData extends DataClass implements Insertable<MonthData> {
  final int id;
  final int seasonId;
  final String name;
  MonthData({required this.id, required this.seasonId, required this.name});
  factory MonthData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return MonthData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      seasonId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}season_id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['season_id'] = Variable<int>(seasonId);
    map['name'] = Variable<String>(name);
    return map;
  }

  MonthCompanion toCompanion(bool nullToAbsent) {
    return MonthCompanion(
      id: Value(id),
      seasonId: Value(seasonId),
      name: Value(name),
    );
  }

  factory MonthData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MonthData(
      id: serializer.fromJson<int>(json['id']),
      seasonId: serializer.fromJson<int>(json['seasonId']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'seasonId': serializer.toJson<int>(seasonId),
      'name': serializer.toJson<String>(name),
    };
  }

  MonthData copyWith({int? id, int? seasonId, String? name}) => MonthData(
        id: id ?? this.id,
        seasonId: seasonId ?? this.seasonId,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('MonthData(')
          ..write('id: $id, ')
          ..write('seasonId: $seasonId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, seasonId, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MonthData &&
          other.id == this.id &&
          other.seasonId == this.seasonId &&
          other.name == this.name);
}

class MonthCompanion extends UpdateCompanion<MonthData> {
  final Value<int> id;
  final Value<int> seasonId;
  final Value<String> name;
  const MonthCompanion({
    this.id = const Value.absent(),
    this.seasonId = const Value.absent(),
    this.name = const Value.absent(),
  });
  MonthCompanion.insert({
    this.id = const Value.absent(),
    required int seasonId,
    required String name,
  })  : seasonId = Value(seasonId),
        name = Value(name);
  static Insertable<MonthData> custom({
    Expression<int>? id,
    Expression<int>? seasonId,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (seasonId != null) 'season_id': seasonId,
      if (name != null) 'name': name,
    });
  }

  MonthCompanion copyWith(
      {Value<int>? id, Value<int>? seasonId, Value<String>? name}) {
    return MonthCompanion(
      id: id ?? this.id,
      seasonId: seasonId ?? this.seasonId,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (seasonId.present) {
      map['season_id'] = Variable<int>(seasonId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MonthCompanion(')
          ..write('id: $id, ')
          ..write('seasonId: $seasonId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $MonthTable extends Month with TableInfo<$MonthTable, MonthData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MonthTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _seasonIdMeta = const VerificationMeta('seasonId');
  @override
  late final GeneratedColumn<int?> seasonId = GeneratedColumn<int?>(
      'season_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES season (id)');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, seasonId, name];
  @override
  String get aliasedName => _alias ?? 'month';
  @override
  String get actualTableName => 'month';
  @override
  VerificationContext validateIntegrity(Insertable<MonthData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('season_id')) {
      context.handle(_seasonIdMeta,
          seasonId.isAcceptableOrUnknown(data['season_id']!, _seasonIdMeta));
    } else if (isInserting) {
      context.missing(_seasonIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MonthData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MonthData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MonthTable createAlias(String alias) {
    return $MonthTable(attachedDatabase, alias);
  }
}

class TemperatureData extends DataClass implements Insertable<TemperatureData> {
  final int id;
  final int monthId;
  final int cityId;
  final int value;
  TemperatureData(
      {required this.id,
      required this.monthId,
      required this.cityId,
      required this.value});
  factory TemperatureData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TemperatureData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      monthId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}month_id'])!,
      cityId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city_id'])!,
      value: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}value'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['month_id'] = Variable<int>(monthId);
    map['city_id'] = Variable<int>(cityId);
    map['value'] = Variable<int>(value);
    return map;
  }

  TemperatureCompanion toCompanion(bool nullToAbsent) {
    return TemperatureCompanion(
      id: Value(id),
      monthId: Value(monthId),
      cityId: Value(cityId),
      value: Value(value),
    );
  }

  factory TemperatureData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TemperatureData(
      id: serializer.fromJson<int>(json['id']),
      monthId: serializer.fromJson<int>(json['monthId']),
      cityId: serializer.fromJson<int>(json['cityId']),
      value: serializer.fromJson<int>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'monthId': serializer.toJson<int>(monthId),
      'cityId': serializer.toJson<int>(cityId),
      'value': serializer.toJson<int>(value),
    };
  }

  TemperatureData copyWith({int? id, int? monthId, int? cityId, int? value}) =>
      TemperatureData(
        id: id ?? this.id,
        monthId: monthId ?? this.monthId,
        cityId: cityId ?? this.cityId,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('TemperatureData(')
          ..write('id: $id, ')
          ..write('monthId: $monthId, ')
          ..write('cityId: $cityId, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, monthId, cityId, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TemperatureData &&
          other.id == this.id &&
          other.monthId == this.monthId &&
          other.cityId == this.cityId &&
          other.value == this.value);
}

class TemperatureCompanion extends UpdateCompanion<TemperatureData> {
  final Value<int> id;
  final Value<int> monthId;
  final Value<int> cityId;
  final Value<int> value;
  const TemperatureCompanion({
    this.id = const Value.absent(),
    this.monthId = const Value.absent(),
    this.cityId = const Value.absent(),
    this.value = const Value.absent(),
  });
  TemperatureCompanion.insert({
    this.id = const Value.absent(),
    required int monthId,
    required int cityId,
    required int value,
  })  : monthId = Value(monthId),
        cityId = Value(cityId),
        value = Value(value);
  static Insertable<TemperatureData> custom({
    Expression<int>? id,
    Expression<int>? monthId,
    Expression<int>? cityId,
    Expression<int>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (monthId != null) 'month_id': monthId,
      if (cityId != null) 'city_id': cityId,
      if (value != null) 'value': value,
    });
  }

  TemperatureCompanion copyWith(
      {Value<int>? id,
      Value<int>? monthId,
      Value<int>? cityId,
      Value<int>? value}) {
    return TemperatureCompanion(
      id: id ?? this.id,
      monthId: monthId ?? this.monthId,
      cityId: cityId ?? this.cityId,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (monthId.present) {
      map['month_id'] = Variable<int>(monthId.value);
    }
    if (cityId.present) {
      map['city_id'] = Variable<int>(cityId.value);
    }
    if (value.present) {
      map['value'] = Variable<int>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TemperatureCompanion(')
          ..write('id: $id, ')
          ..write('monthId: $monthId, ')
          ..write('cityId: $cityId, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $TemperatureTable extends Temperature
    with TableInfo<$TemperatureTable, TemperatureData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TemperatureTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _monthIdMeta = const VerificationMeta('monthId');
  @override
  late final GeneratedColumn<int?> monthId = GeneratedColumn<int?>(
      'month_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES month (id)');
  final VerificationMeta _cityIdMeta = const VerificationMeta('cityId');
  @override
  late final GeneratedColumn<int?> cityId = GeneratedColumn<int?>(
      'city_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES city (id)');
  final VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<int?> value = GeneratedColumn<int?>(
      'value', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, monthId, cityId, value];
  @override
  String get aliasedName => _alias ?? 'temperature';
  @override
  String get actualTableName => 'temperature';
  @override
  VerificationContext validateIntegrity(Insertable<TemperatureData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('month_id')) {
      context.handle(_monthIdMeta,
          monthId.isAcceptableOrUnknown(data['month_id']!, _monthIdMeta));
    } else if (isInserting) {
      context.missing(_monthIdMeta);
    }
    if (data.containsKey('city_id')) {
      context.handle(_cityIdMeta,
          cityId.isAcceptableOrUnknown(data['city_id']!, _cityIdMeta));
    } else if (isInserting) {
      context.missing(_cityIdMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TemperatureData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TemperatureData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TemperatureTable createAlias(String alias) {
    return $TemperatureTable(attachedDatabase, alias);
  }
}

abstract class _$WeatherAppDb extends GeneratedDatabase {
  _$WeatherAppDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $CityTable city = $CityTable(this);
  late final $SeasonTable season = $SeasonTable(this);
  late final $MonthTable month = $MonthTable(this);
  late final $TemperatureTable temperature = $TemperatureTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [city, season, month, temperature];
}
