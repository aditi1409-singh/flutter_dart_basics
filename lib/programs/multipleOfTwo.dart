import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultiplePage extends StatefulWidget {
  const MultiplePage({Key key}) : super(key: key);

  @override
  _MultiplePageState createState() => _MultiplePageState();
}

class _MultiplePageState extends State<MultiplePage> {

  double num1 = 0;
  double num2 = 0;
  double resultNum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Input Values')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextField(
              onSubmitted: (number1) {
                setState(() {
                  num1 = double.parse(number1);
                });
                print(num1);
              } ,
              decoration: InputDecoration(
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
              onSubmitted: (number2) {
                setState(() {
                  num2 = double.parse(number2) ;
                });
                print(num2);
              },
              decoration: InputDecoration(
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
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.all(25),
              child:  MaterialButton(
                child: Text('Tap For Answer', style: TextStyle(fontSize: 30.0),),
                color: Colors.blue[400],
                textColor: Colors.white,
                onPressed: () {
                    setState(() {
                      resultNum = num1*num2;
                    });
                    print(resultNum);
                },
              ),
            ),
            SizedBox(height: 40,),
            Text(
              'Result = $resultNum',
            )
          ],
        ),
      ),
    );
  }
}
