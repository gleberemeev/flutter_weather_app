
class HomeScreenState {
  List<String>? cities;
  List<String> seasons;
  String temperatureIndicator;
  String cityType;

  static late final HomeScreenState _cache = _empty();

  HomeScreenState({
    required this.cities,
    required this.seasons,
    required this.temperatureIndicator,
    required this.cityType,
  });

  static HomeScreenState _empty() {
    return HomeScreenState(cities: List.of(["Bangkok", "Singapore", "Kuala Lumpur"]),
        seasons: List.of(["Summer", "Fall", "Winter", "Spring"]), temperatureIndicator: "30", cityType: "medium");
  }

  factory HomeScreenState.empty() {
    return _cache;
  }
}