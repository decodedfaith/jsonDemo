import 'package:flutter/material.dart';
import 'User.dart';




class UsersList extends StatelessWidget {
  final List<User>? car;
  UsersList({this.car});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UsersList'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: car?.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${car?[index].name}'),
            );
          },
        ),
      ),
    );
  }
}
