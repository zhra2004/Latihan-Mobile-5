import 'package:cake_baru/app/modules/home/views/RegistrationScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/modules/home/bindings/home_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      initialBinding: HomeBinding(), // Add this line to initialize the bindings
      home: RegistrationScreen(),
    );
  }
}
