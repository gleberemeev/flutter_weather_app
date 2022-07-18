

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/screen/settings/controller/settings_controller.dart';

class SettingsWidget extends StatelessWidget {
  final SettingsController controller = Get.find();

  SettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() {
                Iterable<String>? cities = controller.state.value.cities;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DropdownButton(
                    isExpanded: true,
                    hint: const Text("Select city"),
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
              const Text("Select city type"),
              Obx(() {
                Iterable<String>? cityTypes = controller.state.value.cityTypes;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DropdownButton(
                    isExpanded: true,
                    hint: const Text("Select city type"),
                    items: cityTypes
                        .map<DropdownMenuItem<String>>((value) => DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    ))
                        .toList(),
                    onChanged: (String? newValue) {
                      controller.onCityTypeChanged(newValue);
                    },
                    value: controller.state.value.selectedCityType,
                  ),
                );
              }),
              const SizedBox(height: 8),
              Obx(() {
                final temperatures = controller.state.value.monthlyTemperatures;
                return Column(
                  children: temperatures.entries.map<Widget>((entry) => Row(
                      children: [
                        Text(entry.key),
                        Text(entry.value.toString()),
                      ],
                    )
                  ).toList(),
                );
              }),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  controller.saveData();
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
                  "Save Data",
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

}