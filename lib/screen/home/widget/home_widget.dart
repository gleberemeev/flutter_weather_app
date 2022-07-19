import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/screen/home/controller/home_controller.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomeWidget> {
  @override
  void dispose() {
    super.dispose();
    final HomeController controller = Get.find();
    controller.snackBarMessages.clearObservers();
  }

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    controller.snackBarMessages.addObserver((text) {
      if (text.isNotEmpty) {
        final snackBar = SnackBar(content: Text("monthly temperature is $text"));
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
              const SizedBox(height: 8),
              const Text("Select temperature display format",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(onPressed: () => controller.onCelsiusFormatSelected(), child: const Text("°C")),
                  OutlinedButton(onPressed: () => controller.onFahrenheitFormatSelected(), child: const Text("°F")),
                  OutlinedButton(onPressed: () => controller.onKelvinFormatSelected(), child: const Text("°K")),
                ],
              )
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
