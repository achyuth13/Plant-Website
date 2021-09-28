import 'package:flutter/material.dart';
import 'package:plant/constant.dart';
import 'package:plant/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: ktextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // ignore: prefer_const_constructors
      home: HomeScreen(),
    );
  }
}

