import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/screen/home/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Get.put(HomeController());
    throw UnimplementedError();
  }
}
