
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
    return HomeScreenState(cities: null, seasons: List.empty(), temperatureIndicator: "", cityType: "");
  }

  factory HomeScreenState.empty() {
    return _cache;
  }
}