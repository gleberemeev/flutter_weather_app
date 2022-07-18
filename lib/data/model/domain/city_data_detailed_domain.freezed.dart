// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city_data_detailed_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CityDataDetailedDomain {
  String get cityName => throw _privateConstructorUsedError;
  String get cityType => throw _privateConstructorUsedError;
  Map<String, Double> get monthlyTemperatures =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityDataDetailedDomainCopyWith<CityDataDetailedDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDataDetailedDomainCopyWith<$Res> {
  factory $CityDataDetailedDomainCopyWith(CityDataDetailedDomain value,
          $Res Function(CityDataDetailedDomain) then) =
      _$CityDataDetailedDomainCopyWithImpl<$Res>;
  $Res call(
      {String cityName,
      String cityType,
      Map<String, Double> monthlyTemperatures});
}

/// @nodoc
class _$CityDataDetailedDomainCopyWithImpl<$Res>
    implements $CityDataDetailedDomainCopyWith<$Res> {
  _$CityDataDetailedDomainCopyWithImpl(this._value, this._then);

  final CityDataDetailedDomain _value;
  // ignore: unused_field
  final $Res Function(CityDataDetailedDomain) _then;

  @override
  $Res call({
    Object? cityName = freezed,
    Object? cityType = freezed,
    Object? monthlyTemperatures = freezed,
  }) {
    return _then(_value.copyWith(
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      cityType: cityType == freezed
          ? _value.cityType
          : cityType // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyTemperatures: monthlyTemperatures == freezed
          ? _value.monthlyTemperatures
          : monthlyTemperatures // ignore: cast_nullable_to_non_nullable
              as Map<String, Double>,
    ));
  }
}

/// @nodoc
abstract class _$$_CityDataDetailedDomainCopyWith<$Res>
    implements $CityDataDetailedDomainCopyWith<$Res> {
  factory _$$_CityDataDetailedDomainCopyWith(_$_CityDataDetailedDomain value,
          $Res Function(_$_CityDataDetailedDomain) then) =
      __$$_CityDataDetailedDomainCopyWithImpl<$Res>;
  @override
  $Res call(
      {String cityName,
      String cityType,
      Map<String, Double> monthlyTemperatures});
}

/// @nodoc
class __$$_CityDataDetailedDomainCopyWithImpl<$Res>
    extends _$CityDataDetailedDomainCopyWithImpl<$Res>
    implements _$$_CityDataDetailedDomainCopyWith<$Res> {
  __$$_CityDataDetailedDomainCopyWithImpl(_$_CityDataDetailedDomain _value,
      $Res Function(_$_CityDataDetailedDomain) _then)
      : super(_value, (v) => _then(v as _$_CityDataDetailedDomain));

  @override
  _$_CityDataDetailedDomain get _value =>
      super._value as _$_CityDataDetailedDomain;

  @override
  $Res call({
    Object? cityName = freezed,
    Object? cityType = freezed,
    Object? monthlyTemperatures = freezed,
  }) {
    return _then(_$_CityDataDetailedDomain(
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      cityType: cityType == freezed
          ? _value.cityType
          : cityType // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyTemperatures: monthlyTemperatures == freezed
          ? _value._monthlyTemperatures
          : monthlyTemperatures // ignore: cast_nullable_to_non_nullable
              as Map<String, Double>,
    ));
  }
}

/// @nodoc

class _$_CityDataDetailedDomain implements _CityDataDetailedDomain {
  const _$_CityDataDetailedDomain(
      {required this.cityName,
      required this.cityType,
      required final Map<String, Double> monthlyTemperatures})
      : _monthlyTemperatures = monthlyTemperatures;

  @override
  final String cityName;
  @override
  final String cityType;
  final Map<String, Double> _monthlyTemperatures;
  @override
  Map<String, Double> get monthlyTemperatures {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_monthlyTemperatures);
  }

  @override
  String toString() {
    return 'CityDataDetailedDomain(cityName: $cityName, cityType: $cityType, monthlyTemperatures: $monthlyTemperatures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityDataDetailedDomain &&
            const DeepCollectionEquality().equals(other.cityName, cityName) &&
            const DeepCollectionEquality().equals(other.cityType, cityType) &&
            const DeepCollectionEquality()
                .equals(other._monthlyTemperatures, _monthlyTemperatures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cityName),
      const DeepCollectionEquality().hash(cityType),
      const DeepCollectionEquality().hash(_monthlyTemperatures));

  @JsonKey(ignore: true)
  @override
  _$$_CityDataDetailedDomainCopyWith<_$_CityDataDetailedDomain> get copyWith =>
      __$$_CityDataDetailedDomainCopyWithImpl<_$_CityDataDetailedDomain>(
          this, _$identity);
}

abstract class _CityDataDetailedDomain implements CityDataDetailedDomain {
  const factory _CityDataDetailedDomain(
          {required final String cityName,
          required final String cityType,
          required final Map<String, Double> monthlyTemperatures}) =
      _$_CityDataDetailedDomain;

  @override
  String get cityName;
  @override
  String get cityType;
  @override
  Map<String, Double> get monthlyTemperatures;
  @override
  @JsonKey(ignore: true)
  _$$_CityDataDetailedDomainCopyWith<_$_CityDataDetailedDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
