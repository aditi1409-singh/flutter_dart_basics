import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dart_app/programs/userName.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Drawer(
        child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Text('FUCK YOU'),
        ),
      ),
      appBar: AppBar(
        title: Center(
            child: Text('Program List')
        ),

      ),
      body: Column(
        children: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                  child: Text(
                      'Username',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
              ),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserName()));
            },
          )
        ],
      ),
    );
  }
}
