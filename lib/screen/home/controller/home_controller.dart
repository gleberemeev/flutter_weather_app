
import 'package:get/get.dart';
import 'package:weather_app/data/model/home_screen_state.dart';

class HomeController extends GetxController {
  var state = Rx(HomeScreenState.empty());

  void onSeasonChanged(String? season) {
    state.value = state.value.copyWith(selectedSeason: season);
  }

  void onCityChanged(String? city) {
    state.value = state.value.copyWith(selectedCity: city);
  }
}