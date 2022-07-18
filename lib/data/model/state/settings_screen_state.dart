
import 'dart:collection';
import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_screen_state.freezed.dart';

@freezed
class SettingsScreenState with _$SettingsScreenState {
  static SettingsScreenState? _cache;

  const factory SettingsScreenState({
    required Iterable<String> cities,
    required String selectedCity,
    required Iterable<String> cityTypes,
    required String selectedCityType,
    required Map<String, int> monthlyTemperatures,
  }) = _SettingsScreenState;

  static SettingsScreenState _empty() {
    return SettingsScreenState(
        cities: List.empty(),
        selectedCity: "",
        cityTypes: List.empty(),
        selectedCityType: "",
        monthlyTemperatures: HashMap()
    );
  }

  factory SettingsScreenState.empty() {
    _cache ??= _empty();
    return _cache!;
  }
}