import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/screen/home/controller/home_controller.dart';

class HomeWidget extends StatelessWidget {
  final HomeController controller = Get.find();

  HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.snackbarMessage.listen((message) {
      if (message.isNotEmpty) {
        final snackBar = SnackBar(content: Text("monthly temperature is $message"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    });
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() {
                List<String>? cities = controller.state.value.cities;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DropdownButton(
                    isExpanded: true,
                    hint: const Text("Select city"),
                    disabledHint: const Text("Open Settings screen to add a new city"),
                    items: cities
                        .map<DropdownMenuItem<String>>((value) => DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            ))
                        .toList(),
                    onChanged: (String? newValue) {
                      controller.onCityChanged(newValue);
                    },
                    value: controller.state.value.selectedCity,
                  ),
                );
              }),
              const SizedBox(height: 8),
              Obx(() {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DropdownButton(
                      isExpanded: true,
                      hint: const Text("Select a season"),
                      items: controller.state.value.seasons
                          .map<DropdownMenuItem<String>>((value) => DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              ))
                          .toList(),
                      onChanged: (String? newValue) {
                        controller.onSeasonChanged(newValue);
                      },
                      value: controller.state.value.selectedSeason),
                );
              }),
              const SizedBox(height: 8),
              Obx(() => Text("average temperature is ${controller.state.value.temperatureIndicator} degrees")),
              const SizedBox(height: 8),
              Obx(() => Text("this is ${controller.state.value.cityType} city")),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  controller.navigateToSettings();
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  backgroundColor: Colors.blueAccent,
                  primary: Colors.white,
                  textStyle: const TextStyle(
                      fontSize: 20,
                  ),
                ),
                child: const Text(
                  "Open settings",
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
