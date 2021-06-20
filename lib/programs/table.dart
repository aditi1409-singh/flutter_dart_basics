import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({Key key}) : super(key: key);

  @override
  _TableScreenState createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {

  double num;
  int range;
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Table')
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              onChanged: (number) {
                try{
                  setState(() {
                    num = double.parse(number);
                  });
                }catch(e){
                  print(e.toString());
                  setState(() {
                    error = 'Enter Valid Number';
                    num = null;
                  });
                }
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 10),
                hintText: 'Enter a Number',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              onSubmitted: (rangeData) {
                try{
                  setState(() {
                    range = int.parse(rangeData);
                  });
                }catch(e){
                  print(e.toString());
                  setState(() {
                    error = 'Enter Valid Number';
                    range = null;
                  });
                }
              },
              decoration: InputDecoration(
                hintText: 'Enter Range for the Table',
                contentPadding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                )
              ),
            ),
            SizedBox(height: 20,),
            num == null ? Container() : Text(
                'Table of $num',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
            Text(
              error,
              style: TextStyle(
                fontSize: 25,
                color: Colors.red,
              ),
            ),
            range == null || num == null ? Container() : Expanded(
              child: ListView(
                children:
                  List.generate(range, (index) => Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      '${(index + 1) * num}',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
              )
              ),
            ),
          ]
        ),
      ),
    );
  }
}
