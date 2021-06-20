import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimeNumber extends StatefulWidget {
  const PrimeNumber({Key key}) : super(key: key);

  @override
  _PrimeNumberState createState() => _PrimeNumberState();
}

class _PrimeNumberState extends State<PrimeNumber> {

  int endNum = 0;
  bool isPrime;
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Prime Number',
          ),
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
              children: [
                TextField(
                  onSubmitted: (number) {
                    try {
                      endNum = int.parse(number);
                      if(endNum <= 1) {
                        setState(() {
                          error = 'Number must be bigger than 1';
                          isPrime = null;
                        });
                        return;
                      }

                      error = '';

                      for( int startNum = 2 ; startNum < endNum ; startNum++) {
                        if ((endNum % startNum) == 0) {
                          setState(() {
                            isPrime = false;
                          });
                          return;
                        }
                      }
                      setState(() {
                        isPrime= true;
                      });
                  } catch (e){
                    print(e.toString());
                    setState(() {
                      error = 'PLEASE ENTER VALID NUMBER';
                      endNum = null;
                    });
                  }
                } ,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                  ),
                ),
                SizedBox(height: 20,),
                isPrime == null ? Container() :
                Text(
                  '$endNum is ${isPrime  ? 'PRIME' : 'COMPOSITE'}' ,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  error,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                )
            ]
          ),
      ),
      );
  }
}
