import 'package:bachelorapp/welcome_page.dart';
import 'package:flutter/material.dart';

import 'meal_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
                primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  WelcomePage(),
    );
  }
}

