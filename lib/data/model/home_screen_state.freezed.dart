// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenState {
  List<String> get cities => throw _privateConstructorUsedError;
  List<String> get seasons => throw _privateConstructorUsedError;
  String get temperatureIndicator => throw _privateConstructorUsedError;
  String get cityType => throw _privateConstructorUsedError;
  String? get selectedSeason => throw _privateConstructorUsedError;
  String? get selectedCity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res>;
  $Res call(
      {List<String> cities,
      List<String> seasons,
      String temperatureIndicator,
      String cityType,
      String? selectedSeason,
      String? selectedCity});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  final HomeScreenState _value;
  // ignore: unused_field
  final $Res Function(HomeScreenState) _then;

  @override
  $Res call({
    Object? cities = freezed,
    Object? seasons = freezed,
    Object? temperatureIndicator = freezed,
    Object? cityType = freezed,
    Object? selectedSeason = freezed,
    Object? selectedCity = freezed,
  }) {
    return _then(_value.copyWith(
      cities: cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      seasons: seasons == freezed
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperatureIndicator: temperatureIndicator == freezed
          ? _value.temperatureIndicator
          : temperatureIndicator // ignore: cast_nullable_to_non_nullable
              as String,
      cityType: cityType == freezed
          ? _value.cityType
          : cityType // ignore: cast_nullable_to_non_nullable
              as String,
      selectedSeason: selectedSeason == freezed
          ? _value.selectedSeason
          : selectedSeason // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCity: selectedCity == freezed
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeScreenStateCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$_HomeScreenStateCopyWith(
          _$_HomeScreenState value, $Res Function(_$_HomeScreenState) then) =
      __$$_HomeScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> cities,
      List<String> seasons,
      String temperatureIndicator,
      String cityType,
      String? selectedSeason,
      String? selectedCity});
}

/// @nodoc
class __$$_HomeScreenStateCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res>
    implements _$$_HomeScreenStateCopyWith<$Res> {
  __$$_HomeScreenStateCopyWithImpl(
      _$_HomeScreenState _value, $Res Function(_$_HomeScreenState) _then)
      : super(_value, (v) => _then(v as _$_HomeScreenState));

  @override
  _$_HomeScreenState get _value => super._value as _$_HomeScreenState;

  @override
  $Res call({
    Object? cities = freezed,
    Object? seasons = freezed,
    Object? temperatureIndicator = freezed,
    Object? cityType = freezed,
    Object? selectedSeason = freezed,
    Object? selectedCity = freezed,
  }) {
    return _then(_$_HomeScreenState(
      cities: cities == freezed
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      seasons: seasons == freezed
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperatureIndicator: temperatureIndicator == freezed
          ? _value.temperatureIndicator
          : temperatureIndicator // ignore: cast_nullable_to_non_nullable
              as String,
      cityType: cityType == freezed
          ? _value.cityType
          : cityType // ignore: cast_nullable_to_non_nullable
              as String,
      selectedSeason: selectedSeason == freezed
          ? _value.selectedSeason
          : selectedSeason // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCity: selectedCity == freezed
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HomeScreenState implements _HomeScreenState {
  const _$_HomeScreenState(
      {required final List<String> cities,
      required final List<String> seasons,
      required this.temperatureIndicator,
      required this.cityType,
      required this.selectedSeason,
      required this.selectedCity})
      : _cities = cities,
        _seasons = seasons;

  final List<String> _cities;
  @override
  List<String> get cities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  final List<String> _seasons;
  @override
  List<String> get seasons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seasons);
  }

  @override
  final String temperatureIndicator;
  @override
  final String cityType;
  @override
  final String? selectedSeason;
  @override
  final String? selectedCity;

  @override
  String toString() {
    return 'HomeScreenState(cities: $cities, seasons: $seasons, temperatureIndicator: $temperatureIndicator, cityType: $cityType, selectedSeason: $selectedSeason, selectedCity: $selectedCity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeScreenState &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality().equals(other._seasons, _seasons) &&
            const DeepCollectionEquality()
                .equals(other.temperatureIndicator, temperatureIndicator) &&
            const DeepCollectionEquality().equals(other.cityType, cityType) &&
            const DeepCollectionEquality()
                .equals(other.selectedSeason, selectedSeason) &&
            const DeepCollectionEquality()
                .equals(other.selectedCity, selectedCity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cities),
      const DeepCollectionEquality().hash(_seasons),
      const DeepCollectionEquality().hash(temperatureIndicator),
      const DeepCollectionEquality().hash(cityType),
      const DeepCollectionEquality().hash(selectedSeason),
      const DeepCollectionEquality().hash(selectedCity));

  @JsonKey(ignore: true)
  @override
  _$$_HomeScreenStateCopyWith<_$_HomeScreenState> get copyWith =>
      __$$_HomeScreenStateCopyWithImpl<_$_HomeScreenState>(this, _$identity);
}

abstract class _HomeScreenState implements HomeScreenState {
  const factory _HomeScreenState(
      {required final List<String> cities,
      required final List<String> seasons,
      required final String temperatureIndicator,
      required final String cityType,
      required final String? selectedSeason,
      required final String? selectedCity}) = _$_HomeScreenState;

  @override
  List<String> get cities;
  @override
  List<String> get seasons;
  @override
  String get temperatureIndicator;
  @override
  String get cityType;
  @override
  String? get selectedSeason;
  @override
  String? get selectedCity;
  @override
  @JsonKey(ignore: true)
  _$$_HomeScreenStateCopyWith<_$_HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
