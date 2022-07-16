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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() {
            List<String>? cities = controller.state.value.cities;
            return DropdownButton(
              hint: const Text("Select city"),
              disabledHint: const Text("Open Settings screen to add a new city"),
              items: cities
                  ?.map<DropdownMenuItem<String>>((value) => DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      ))
                  .toList(),
              onChanged: (String? newValue) {
                //todo onCityChanged
              },
            );
          }),
          const SizedBox(height: 8),
          Obx(() {
            return DropdownButton(
                hint: const Text("Select a season"),
                items: controller.state.value.seasons
                    .map<DropdownMenuItem<String>>((value) => DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        ))
                    .toList(),
                onChanged: (String? newValue) {
                  //todo onSeasonChanged
                });
          }),
          const SizedBox(height: 8),
          Obx(() => Text(controller.state.value.temperatureIndicator)),
          const SizedBox(height: 8),
          Obx(() => Text(controller.state.value.cityType))
        ],
      ),
    );
  }
}
