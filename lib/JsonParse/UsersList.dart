import 'package:flutter/material.dart';
import 'User.dart';




class UsersList extends StatelessWidget {

  UsersList(this.car);
  final List<User> car;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UsersList'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: car.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${car[index].name}'),
            );
          },
        ),
      ),
    );
  }
}
