import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';




class Spinner extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5E194E),
      body: Padding(
        padding: EdgeInsets.fromLTRB(36.0, 178.0, 36.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/mobileLogo.png'),
            SizedBox(
              height: 55.0,
            ),
            Container(child: SpinKitFadingCircle(
              itemBuilder: (BuildContext context, int index) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    color: index.isEven ? Colors.black : Colors.white,
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}