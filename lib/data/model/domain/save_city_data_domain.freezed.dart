// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_city_data_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaveCityDataDomain {
  String get cityName => throw _privateConstructorUsedError;
  String get cityType => throw _privateConstructorUsedError;
  Map<String, int> get monthlyTemperatures =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveCityDataDomainCopyWith<SaveCityDataDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveCityDataDomainCopyWith<$Res> {
  factory $SaveCityDataDomainCopyWith(
          SaveCityDataDomain value, $Res Function(SaveCityDataDomain) then) =
      _$SaveCityDataDomainCopyWithImpl<$Res>;
  $Res call(
      {String cityName, String cityType, Map<String, int> monthlyTemperatures});
}

/// @nodoc
class _$SaveCityDataDomainCopyWithImpl<$Res>
    implements $SaveCityDataDomainCopyWith<$Res> {
  _$SaveCityDataDomainCopyWithImpl(this._value, this._then);

  final SaveCityDataDomain _value;
  // ignore: unused_field
  final $Res Function(SaveCityDataDomain) _then;

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
              as Map<String, int>,
    ));
  }
}

/// @nodoc
abstract class _$$_SaveCityDataDomainCopyWith<$Res>
    implements $SaveCityDataDomainCopyWith<$Res> {
  factory _$$_SaveCityDataDomainCopyWith(_$_SaveCityDataDomain value,
          $Res Function(_$_SaveCityDataDomain) then) =
      __$$_SaveCityDataDomainCopyWithImpl<$Res>;
  @override
  $Res call(
      {String cityName, String cityType, Map<String, int> monthlyTemperatures});
}

/// @nodoc
class __$$_SaveCityDataDomainCopyWithImpl<$Res>
    extends _$SaveCityDataDomainCopyWithImpl<$Res>
    implements _$$_SaveCityDataDomainCopyWith<$Res> {
  __$$_SaveCityDataDomainCopyWithImpl(
      _$_SaveCityDataDomain _value, $Res Function(_$_SaveCityDataDomain) _then)
      : super(_value, (v) => _then(v as _$_SaveCityDataDomain));

  @override
  _$_SaveCityDataDomain get _value => super._value as _$_SaveCityDataDomain;

  @override
  $Res call({
    Object? cityName = freezed,
    Object? cityType = freezed,
    Object? monthlyTemperatures = freezed,
  }) {
    return _then(_$_SaveCityDataDomain(
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
              as Map<String, int>,
    ));
  }
}

/// @nodoc

class _$_SaveCityDataDomain implements _SaveCityDataDomain {
  const _$_SaveCityDataDomain(
      {required this.cityName,
      required this.cityType,
      required final Map<String, int> monthlyTemperatures})
      : _monthlyTemperatures = monthlyTemperatures;

  @override
  final String cityName;
  @override
  final String cityType;
  final Map<String, int> _monthlyTemperatures;
  @override
  Map<String, int> get monthlyTemperatures {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_monthlyTemperatures);
  }

  @override
  String toString() {
    return 'SaveCityDataDomain(cityName: $cityName, cityType: $cityType, monthlyTemperatures: $monthlyTemperatures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveCityDataDomain &&
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
  _$$_SaveCityDataDomainCopyWith<_$_SaveCityDataDomain> get copyWith =>
      __$$_SaveCityDataDomainCopyWithImpl<_$_SaveCityDataDomain>(
          this, _$identity);
}

abstract class _SaveCityDataDomain implements SaveCityDataDomain {
  const factory _SaveCityDataDomain(
          {required final String cityName,
          required final String cityType,
          required final Map<String, int> monthlyTemperatures}) =
      _$_SaveCityDataDomain;

  @override
  String get cityName;
  @override
  String get cityType;
  @override
  Map<String, int> get monthlyTemperatures;
  @override
  @JsonKey(ignore: true)
  _$$_SaveCityDataDomainCopyWith<_$_SaveCityDataDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
