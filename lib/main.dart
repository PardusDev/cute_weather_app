import 'package:cute_weather_app/screens/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Phoenix',
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
    },
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(235, 198, 178, 1.0),
          primary: Color.fromRGBO(235, 198, 178, 1.0)
      )
    ),
  ));
}
