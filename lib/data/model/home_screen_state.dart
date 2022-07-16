
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  static final HomeScreenState _cache = _empty();

  const factory HomeScreenState({
    required List<String> cities,
    required List<String> seasons,
    required String temperatureIndicator,
    required String cityType,
    required String? selectedSeason,
    required String? selectedCity,
  }) = _HomeScreenState;

  static HomeScreenState _empty() {
    return HomeScreenState(cities: List.of(["Bangkok", "Singapore", "Kuala Lumpur"]),
        seasons: List.of(["Summer", "Fall", "Winter", "Spring"]),
        temperatureIndicator: "30",
        cityType: "medium",
        selectedCity: "Bangkok",
        selectedSeason: "Summer");
  }

  factory HomeScreenState.empty() {
    return _cache;
  }
}