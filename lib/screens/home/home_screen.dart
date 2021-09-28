import 'package:flutter/material.dart';
import 'package:plant/components/my_bottom_bar.dart';
import 'package:plant/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      // ignore: prefer_const_constructors
      bottomNavigationBar: MyBottomBar(),
    );
  }
}