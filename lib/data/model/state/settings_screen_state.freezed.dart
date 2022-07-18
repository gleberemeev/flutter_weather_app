// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsScreenState {
  Iterable<String> get cities => throw _privateConstructorUsedError;
  String get selectedCity => throw _privateConstructorUsedError;
  Iterable<String> get cityTypes => throw _privateConstructorUsedError;
  String get selectedCityType => throw _privateConstructorUsedError;
  Map<String, int> get monthlyTemperatures =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsScreenStateCopyWith<SettingsScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsScreenStateCopyWith<$Res> {
  factory $SettingsScreenStateCopyWith(
          SettingsScreenState value, $Res Function(SettingsScreenState) then) =
      _$SettingsScreenStateCopyWithImpl<$Res>;
  $Res call(
      {Iterable<String> cities,
      String selectedCity,
      Iterable<String> cityTypes,
      String selectedCityType,
      Map<String, int> monthlyTemperatures});
}

/// @nodoc
class _$SettingsScreenStateCopyWithImpl<$Res>
    implements $SettingsScreenStateCopyWith<$Res> {
  _$SettingsScreenStateCopyWithImpl(this._value, this._then);

  final SettingsScreenState _value;
  // ignore: unused_field
  final $Res Function(SettingsScreenState) _then;

  @override
  $Res call({
    Object? cities = freezed,
    Object? selectedCity = freezed,
    Object? cityTypes = freezed,
    Object? selectedCityType = freezed,
    Object? monthlyTemperatures = freezed,
  }) {
    return _then(_value.copyWith(
      cities: cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as Iterable<String>,
      selectedCity: selectedCity == freezed
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as String,
      cityTypes: cityTypes == freezed
          ? _value.cityTypes
          : cityTypes // ignore: cast_nullable_to_non_nullable
              as Iterable<String>,
      selectedCityType: selectedCityType == freezed
          ? _value.selectedCityType
          : selectedCityType // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyTemperatures: monthlyTemperatures == freezed
          ? _value.monthlyTemperatures
          : monthlyTemperatures // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
abstract class _$$_SettingsScreenStateCopyWith<$Res>
    implements $SettingsScreenStateCopyWith<$Res> {
  factory _$$_SettingsScreenStateCopyWith(_$_SettingsScreenState value,
          $Res Function(_$_SettingsScreenState) then) =
      __$$_SettingsScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Iterable<String> cities,
      String selectedCity,
      Iterable<String> cityTypes,
      String selectedCityType,
      Map<String, int> monthlyTemperatures});
}

/// @nodoc
class __$$_SettingsScreenStateCopyWithImpl<$Res>
    extends _$SettingsScreenStateCopyWithImpl<$Res>
    implements _$$_SettingsScreenStateCopyWith<$Res> {
  __$$_SettingsScreenStateCopyWithImpl(_$_SettingsScreenState _value,
      $Res Function(_$_SettingsScreenState) _then)
      : super(_value, (v) => _then(v as _$_SettingsScreenState));

  @override
  _$_SettingsScreenState get _value => super._value as _$_SettingsScreenState;

  @override
  $Res call({
    Object? cities = freezed,
    Object? selectedCity = freezed,
    Object? cityTypes = freezed,
    Object? selectedCityType = freezed,
    Object? monthlyTemperatures = freezed,
  }) {
    return _then(_$_SettingsScreenState(
      cities: cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as Iterable<String>,
      selectedCity: selectedCity == freezed
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as String,
      cityTypes: cityTypes == freezed
          ? _value.cityTypes
          : cityTypes // ignore: cast_nullable_to_non_nullable
              as Iterable<String>,
      selectedCityType: selectedCityType == freezed
          ? _value.selectedCityType
          : selectedCityType // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyTemperatures: monthlyTemperatures == freezed
          ? _value._monthlyTemperatures
          : monthlyTemperatures // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc

class _$_SettingsScreenState implements _SettingsScreenState {
  const _$_SettingsScreenState(
      {required this.cities,
      required this.selectedCity,
      required this.cityTypes,
      required this.selectedCityType,
      required final Map<String, int> monthlyTemperatures})
      : _monthlyTemperatures = monthlyTemperatures;

  @override
  final Iterable<String> cities;
  @override
  final String selectedCity;
  @override
  final Iterable<String> cityTypes;
  @override
  final String selectedCityType;
  final Map<String, int> _monthlyTemperatures;
  @override
  Map<String, int> get monthlyTemperatures {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_monthlyTemperatures);
  }

  @override
  String toString() {
    return 'SettingsScreenState(cities: $cities, selectedCity: $selectedCity, cityTypes: $cityTypes, selectedCityType: $selectedCityType, monthlyTemperatures: $monthlyTemperatures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsScreenState &&
            const DeepCollectionEquality().equals(other.cities, cities) &&
            const DeepCollectionEquality()
                .equals(other.selectedCity, selectedCity) &&
            const DeepCollectionEquality().equals(other.cityTypes, cityTypes) &&
            const DeepCollectionEquality()
                .equals(other.selectedCityType, selectedCityType) &&
            const DeepCollectionEquality()
                .equals(other._monthlyTemperatures, _monthlyTemperatures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cities),
      const DeepCollectionEquality().hash(selectedCity),
      const DeepCollectionEquality().hash(cityTypes),
      const DeepCollectionEquality().hash(selectedCityType),
      const DeepCollectionEquality().hash(_monthlyTemperatures));

  @JsonKey(ignore: true)
  @override
  _$$_SettingsScreenStateCopyWith<_$_SettingsScreenState> get copyWith =>
      __$$_SettingsScreenStateCopyWithImpl<_$_SettingsScreenState>(
          this, _$identity);
}

abstract class _SettingsScreenState implements SettingsScreenState {
  const factory _SettingsScreenState(
          {required final Iterable<String> cities,
          required final String selectedCity,
          required final Iterable<String> cityTypes,
          required final String selectedCityType,
          required final Map<String, int> monthlyTemperatures}) =
      _$_SettingsScreenState;

  @override
  Iterable<String> get cities;
  @override
  String get selectedCity;
  @override
  Iterable<String> get cityTypes;
  @override
  String get selectedCityType;
  @override
  Map<String, int> get monthlyTemperatures;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsScreenStateCopyWith<_$_SettingsScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
