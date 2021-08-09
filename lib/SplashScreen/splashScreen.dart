import 'package:beta_weddin/JsonParse/Services.dart';
import 'package:beta_weddin/SplashScreen/Spinner.dart';
import 'package:beta_weddin/SplashScreen/Splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// This code below works fine but keeps spinning, when
// Service.getuser() returns error

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Services.getUser(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Spinner();
          } else {
            print(snapshot.data[6].name);
            return Splash(car: snapshot.data);
          }
        });
  }
}


// This code below, as opposed to the own above alerts the user when there is error

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: Services.getUser(),
//         builder: (context, AsyncSnapshot snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             if (snapshot.hasError) {
//               return Center(
//                 // error message implementation needs more styling and logic
//                 child: Column(
//                   children: [
//                     Text(
//                       'CONNECTION ERROR',
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: Colors.black54,
//                       ),
//                     ),
//                     Text(
//                       'PLEASE MAKE SURE YOU ARE CONNECTED TO A STABLE NETWORK'
//                       'OR TRY AGAIN LATER.',
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: Colors.black54,
//                       ),
//                     ),
//                     TextButton(
//                         onPressed: () {
//                           setState(() {});
//                         },
//                         child: Text(
//                           'RETRY',
//                           style: TextStyle(
//                               fontSize: 18,
//                               color: Colors.white,
//                               backgroundColor: Colors.black54),
//                         ))
//                   ],
//                 ),
//               );
//             } else if (snapshot.hasData) {
//               print(snapshot.data[6].name);
//               return Splash(car: snapshot.data);
//             }
//           }
//           return Spinner();
//         });
//   }
// }
