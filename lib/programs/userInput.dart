import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dart_app/programs/userName.dart';

class UserInput extends StatefulWidget {
  const UserInput({Key key}) : super(key: key);

  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {

  int num;
  String error = '';
  String enteredNames ;
  List<String> names = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Username List')
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              onChanged: (newEnteredNames){
                    enteredNames = newEnteredNames;
                    names.add(newEnteredNames);
                },
            ),
            SizedBox(height: 30,),
            InkWell(
              child: Icon(
                Icons.add,
                size: 20,
                color: Colors.blue,
              ),
              onTap: (){
                setState(() {
                });
              },
            ),
             Expanded(
               child: ListView(
                    children:
                    List.generate(names.length ,(index) => Text(
                      '${names[index]}',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                     ),
                    )
            ),
             ),
          ],
        ),
      ),
    );
  }
}
