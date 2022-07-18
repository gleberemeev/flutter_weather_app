import 'package:flutter/material.dart';
import 'package:weather_app/screen/home/widget/home_widget.dart';
import 'package:get/get.dart';
import 'package:weather_app/screen/home/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
        ),

      ),
      body: SafeArea(
        child: HomeWidget(),
      ),
    );
  }
}
