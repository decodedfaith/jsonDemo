import 'package:beta_weddin/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BetaWeddin());
}

class BetaWeddin extends StatelessWidget {
  const BetaWeddin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      title: 'BetaWeddin App',
      debugShowCheckedModeBanner: false,

    );
  }
}
