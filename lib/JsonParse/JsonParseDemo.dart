import 'package:flutter/material.dart';
import 'User.dart';
import 'Services.dart';

class JsonParseDemo extends StatefulWidget {
  const JsonParseDemo({Key? key}) : super(key: key);

  @override
  _JsonParseDemoState createState() => _JsonParseDemoState();
}

class _JsonParseDemoState extends State<JsonParseDemo> {
  List<User> _users = [];
  bool _loading = true;
  // var yes = _users;


  // @override
  // void initState() {
  //   super.initState();
  //   _loading = true;
  //   setState(() {
  //     Services.getUser().then((users) {
  //       _users = users;
  //        print(_users[0].name);
  //       _loading = false;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    print('widget build');
    Services.getUser().then((user) => _users=user);
    print(_users);
    return FutureBuilder(

      future: Services.getUser(),
      builder: (context, AsyncSnapshot<List<User>> snapshot) {

        if (snapshot.data == null) {

          return Spinner();

        } else {

          return Scaffold(
            appBar: AppBar(
              title: Text(_loading
                  ? 'loadingloadingloading............'
                  : 'UserUserUserUser'),
              centerTitle: true,
            ),
            body: Container(
              child: ListView.builder(
                itemCount: _users.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${_users[index].name}'),
                  );
                },
              ),
            ),
          );
        }
      }
    );
  }
}

class Spinner extends StatefulWidget {
  const Spinner({Key? key}) : super(key: key);

  @override
  _SpinnerState createState() => _SpinnerState();
}

class _SpinnerState extends State<Spinner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5E194E),
      body: Padding(
        padding: EdgeInsets.fromLTRB(36.0, 178.0, 36.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/mobileLogo.png')),
            SizedBox(
              height: 55.0,
            ),
            Container( child: CircularProgressIndicator())
          ],
        ),
      ),
    );
  }
}
