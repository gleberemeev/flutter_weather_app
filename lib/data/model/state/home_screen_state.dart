
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  static HomeScreenState? _cache;

  const factory HomeScreenState({
    required List<String> cities,
    required List<String> seasons,
    required int temperatureValue,
    required String temperatureIndicator,
    required String cityType,
    required String? selectedSeason,
    required String? selectedCity,
  }) = _HomeScreenState;

  static HomeScreenState _empty() {
    return HomeScreenState(cities: List.empty(),
        seasons: List.empty(),
        temperatureIndicator: "",
        temperatureValue: 0,
        cityType: "",
        selectedCity: "",
        selectedSeason: "");
  }

  factory HomeScreenState.empty() {
    _cache ??= _empty();
    return _cache!;
  }
}