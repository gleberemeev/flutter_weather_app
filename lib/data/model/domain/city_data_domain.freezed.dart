// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city_data_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CityDataDomain {
  String get cityName => throw _privateConstructorUsedError;
  String get seasonName => throw _privateConstructorUsedError;
  String get cityType => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityDataDomainCopyWith<CityDataDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDataDomainCopyWith<$Res> {
  factory $CityDataDomainCopyWith(
          CityDataDomain value, $Res Function(CityDataDomain) then) =
      _$CityDataDomainCopyWithImpl<$Res>;
  $Res call(
      {String cityName,
      String seasonName,
      String cityType,
      double temperature});
}

/// @nodoc
class _$CityDataDomainCopyWithImpl<$Res>
    implements $CityDataDomainCopyWith<$Res> {
  _$CityDataDomainCopyWithImpl(this._value, this._then);

  final CityDataDomain _value;
  // ignore: unused_field
  final $Res Function(CityDataDomain) _then;

  @override
  $Res call({
    Object? cityName = freezed,
    Object? seasonName = freezed,
    Object? cityType = freezed,
    Object? temperature = freezed,
  }) {
    return _then(_value.copyWith(
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      seasonName: seasonName == freezed
          ? _value.seasonName
          : seasonName // ignore: cast_nullable_to_non_nullable
              as String,
      cityType: cityType == freezed
          ? _value.cityType
          : cityType // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_CityDataDomainCopyWith<$Res>
    implements $CityDataDomainCopyWith<$Res> {
  factory _$$_CityDataDomainCopyWith(
          _$_CityDataDomain value, $Res Function(_$_CityDataDomain) then) =
      __$$_CityDataDomainCopyWithImpl<$Res>;
  @override
  $Res call(
      {String cityName,
      String seasonName,
      String cityType,
      double temperature});
}

/// @nodoc
class __$$_CityDataDomainCopyWithImpl<$Res>
    extends _$CityDataDomainCopyWithImpl<$Res>
    implements _$$_CityDataDomainCopyWith<$Res> {
  __$$_CityDataDomainCopyWithImpl(
      _$_CityDataDomain _value, $Res Function(_$_CityDataDomain) _then)
      : super(_value, (v) => _then(v as _$_CityDataDomain));

  @override
  _$_CityDataDomain get _value => super._value as _$_CityDataDomain;

  @override
  $Res call({
    Object? cityName = freezed,
    Object? seasonName = freezed,
    Object? cityType = freezed,
    Object? temperature = freezed,
  }) {
    return _then(_$_CityDataDomain(
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      seasonName: seasonName == freezed
          ? _value.seasonName
          : seasonName // ignore: cast_nullable_to_non_nullable
              as String,
      cityType: cityType == freezed
          ? _value.cityType
          : cityType // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_CityDataDomain implements _CityDataDomain {
  const _$_CityDataDomain(
      {required this.cityName,
      required this.seasonName,
      required this.cityType,
      required this.temperature});

  @override
  final String cityName;
  @override
  final String seasonName;
  @override
  final String cityType;
  @override
  final double temperature;

  @override
  String toString() {
    return 'CityDataDomain(cityName: $cityName, seasonName: $seasonName, cityType: $cityType, temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityDataDomain &&
            const DeepCollectionEquality().equals(other.cityName, cityName) &&
            const DeepCollectionEquality()
                .equals(other.seasonName, seasonName) &&
            const DeepCollectionEquality().equals(other.cityType, cityType) &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cityName),
      const DeepCollectionEquality().hash(seasonName),
      const DeepCollectionEquality().hash(cityType),
      const DeepCollectionEquality().hash(temperature));

  @JsonKey(ignore: true)
  @override
  _$$_CityDataDomainCopyWith<_$_CityDataDomain> get copyWith =>
      __$$_CityDataDomainCopyWithImpl<_$_CityDataDomain>(this, _$identity);
}

abstract class _CityDataDomain implements CityDataDomain {
  const factory _CityDataDomain(
      {required final String cityName,
      required final String seasonName,
      required final String cityType,
      required final double temperature}) = _$_CityDataDomain;

  @override
  String get cityName;
  @override
  String get seasonName;
  @override
  String get cityType;
  @override
  double get temperature;
  @override
  @JsonKey(ignore: true)
  _$$_CityDataDomainCopyWith<_$_CityDataDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
