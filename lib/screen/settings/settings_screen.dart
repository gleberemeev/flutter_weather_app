import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/screen/settings/controller/settings_controller.dart';
import 'package:weather_app/screen/settings/widget/settings_widget.dart';

class SettingsScreen extends StatelessWidget {
  final controller = Get.put(SettingsController());

  SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Settings",
          ),
          leading: InkWell(
            customBorder: const CircleBorder(),
            child: const Icon(
              Icons.arrow_back,
            ),
            onTap: () async {
              controller.onBackPressed();
            },
          )),
      body: SafeArea(
        child: SettingsWidget(),
      ),
    );
  }
}
