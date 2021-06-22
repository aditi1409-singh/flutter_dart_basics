import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultiplePage extends StatefulWidget {
  const MultiplePage({Key key}) : super(key: key);

  @override
  _MultiplePageState createState() => _MultiplePageState();
}

class _MultiplePageState extends State<MultiplePage> {

  double num1;
  double num2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("Input Product's Values")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                onChanged: (number1) {
                  try {
                    setState(() {
                      num1 = double.parse(number1);
                    });
                  } catch (e){
                    print(e.toString());
                    setState(() {
                      num1 = null;
                    });
                  }
                } ,
                decoration: InputDecoration(
                  hintText: 'Enter First Number',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'X',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                onChanged: (number2) {
                  try {
                    setState(() {
                      num2 = double.parse(number2);
                    });
                  }catch(e){
                    print(e.toString());
                    setState(() {
                      num2 = null;
                    });
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Enter Second Number',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                '=',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 40,),
              num1 == null || num2 == null ? Container() : Text(
                'Result = ${num1*num2}',
                style: TextStyle(
                  fontSize: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
