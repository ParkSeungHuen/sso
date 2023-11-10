import 'package:flutter/material.dart';

class SettingCar extends StatefulWidget {
  const SettingCar({Key? key}) : super(key: key);

  @override
  State<SettingCar> createState() => _SettingCarState();
}

class _SettingCarState extends State<SettingCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("보행보조차 설정"),
      ),

      body: Column(
        children: [
          const Placeholder()
        ],
      ),
    );
  }
}
