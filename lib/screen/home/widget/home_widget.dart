import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/screen/home/controller/home_controller.dart';

class HomeWidget extends StatelessWidget {
  HomeController controller = Get.put(HomeController());

  HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Obx(() {
          List<String>? cities = controller.state.value.cities;
          if (cities == null) {
            return const SizedBox(width: 8);
          } else {
            return DropdownButton(
              items: cities.map<DropdownMenuItem<String>>((value) => DropdownMenuItem(child: Text(value))).toList(),
              onChanged: (String? newValue) {
                //todo onCityChanged
              },
            );
          }
        }),
        const SizedBox(width: 8),
        Obx(() {
          return DropdownButton(
              items: controller.state.value.seasons
                  .map<DropdownMenuItem<String>>((value) => DropdownMenuItem(child: Text(value)))
                  .toList(),
              onChanged: (String? newValue) {
                //todo onSeasonChanged
              });
        }),
        const SizedBox(width: 8),
        Obx(() => Text(controller.state.value.temperatureIndicator)),
        const SizedBox(width: 8),
        Obx(() => Text(controller.state.value.cityType))
      ],
    );
  }
}
