import 'package:flutter/material.dart';
import 'package:weather_app/screen/settings/widget/settings_widget.dart';

class SettingsScreen extends StatelessWidget {
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
              //todo onbackpressed
            },
          )),
      body: const SafeArea(
        child: SettingsWidget(),
      ),
    );
  }
}
