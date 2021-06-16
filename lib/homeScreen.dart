import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dart_app/programs/userName.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Program List'),
      ),
      body: Column(
        children: [
          InkWell(
            child: Text('Username'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserName()));
            },
          )
        ],
      ),
    );
  }
}
