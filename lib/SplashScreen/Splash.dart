import 'package:beta_weddin/JsonParse/UsersList.dart';
import 'package:flutter/material.dart';




class Splash extends StatelessWidget {
  final car;
  Splash({this.car});

  @override
  Widget build(BuildContext context) {
    print('splash');
    return Scaffold(
      backgroundColor: Color(0xff5E194E),
      body: Padding(
        padding: EdgeInsets.fromLTRB(36.0, 178.0, 36.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/mobileLogo.png')),
            SizedBox(height: 89.0),
            Text(
              'Create beautiful and life-time memories with your friends and family without stress...',
              style: TextStyle(color: Color(0xffFFFFFF)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 55.0,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    print(car[0].name);
                    return UsersList(car: car);
                  }));
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      color: Color(0xff5E194E),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffFFFFFF),
                    padding:
                    EdgeInsets.symmetric(horizontal: 110, vertical: 19)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}