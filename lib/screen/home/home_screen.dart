import 'package:flutter/material.dart';
import 'package:weather_app/screen/home/widget/home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
