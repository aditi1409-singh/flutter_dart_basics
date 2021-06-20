import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dart_app/programs/multipleOfTwo.dart';
import 'package:flutter_dart_app/programs/primeNumber.dart';
import 'package:flutter_dart_app/programs/userName.dart';
import 'package:flutter_dart_app/programs/table.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {

  List<String> programName = ['Product' , 'PrimeNumber' , 'Username' ,'Table'];
  List<Widget> programScreen = [MultiplePage() , PrimeNumber() , UserName() , TableScreen()];

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
      body: ListView.builder(
        itemCount: programScreen.length,
        itemBuilder: (context, index) =>  InkWell(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  programName[index],
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => programScreen[index]));
              },
            ),
      ),
    );
  }
}
