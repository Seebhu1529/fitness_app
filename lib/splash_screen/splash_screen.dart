import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Container(
          child: Image.asset('assets/images/splash_img.png',
          fit: BoxFit.cover,
          ),
        ),

      ),
    );
  }
}