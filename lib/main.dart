import 'package:flutter/material.dart';
import 'package:uol_mobile_app/HomeScreen.dart';
import 'package:uol_mobile_app/kuchBh.dart';
import 'package:uol_mobile_app/sampleScreen.dart';

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:uol_mobile_app/shoppingCart.dart';

void main() {
  runApp(const MaterialApp(
    home: ShoppingCart(),
  ));
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: EasySplashScreen(
          logo: Image.asset(
              'assets/images/shoes1.png',

          ),
          title: Text(
            "Shoes Shopping",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          showLoader: true,
          loadingText: Text("Loading..."),
          navigator: KuchBh(),
          durationInSeconds: 5,
        ),
      ),
    );
  }
}













