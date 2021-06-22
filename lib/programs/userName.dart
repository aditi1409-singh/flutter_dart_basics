import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserName extends StatefulWidget {
  const UserName({Key key}) : super(key: key);

  @override
  _UserNameState createState() => _UserNameState();
}

String userName = "";

class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Username Data')
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              onSubmitted: (newUserName) {
                setState(() {
                  userName = newUserName;
                });
              },
              decoration: InputDecoration(
                hintText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50,),
            userName.isEmpty ? Container() : Text("Hello $userName"),
          ],
        ),
      )
    );
  }
}
