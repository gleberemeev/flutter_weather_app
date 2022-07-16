import 'package:flutter/material.dart';
import 'package:weather_app/data/model/home_screen_state.dart';

class HomeWidget extends StatelessWidget {
  final HomeScreenState state;

  const HomeWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String>? cities = state.cities;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (cities == null)
          const SizedBox(width: 8)
        else
          DropdownButton(
            items: cities.map<DropdownMenuItem<String>>((value) => DropdownMenuItem(child: Text(value))).toList(),
            onChanged: (String? newValue) {
              //todo onCityChanged
            },
          ),
        const SizedBox(width: 8),
        DropdownButton(
            items:
                state.seasons.map<DropdownMenuItem<String>>((value) => DropdownMenuItem(child: Text(value))).toList(),
            onChanged: (String? newValue) {
              //todo onSeasonChanged
            }
          ),
        const SizedBox(width: 8),
        Text(state.temperatureIndicator),
        const SizedBox(width: 8),
        Text(state.cityType)
      ],
    );
  }
}
