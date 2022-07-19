import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/data/repository/city_repository.dart';
import 'package:weather_app/data/repository/city_repository_impl.dart';
import 'package:weather_app/data/weather_app_db.dart';
import 'package:weather_app/screen/home/home_screen.dart';

void main() {
  final database = WeatherAppDb();
  Get.put(database);
  Get.put<CityRepository>(CityRepositoryImpl(database));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen()
    );
  }
}