import 'package:beta_weddin/JsonParse/Services.dart';
import 'package:beta_weddin/SplashScreen/Spinner.dart';
import 'package:beta_weddin/SplashScreen/Splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Services.getUser(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Spinner();
          } else {
            return Splash(car: snapshot.data);
          }
        });
  }
}




