import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_dart_app/programs/userName.dart';

class UserInput extends StatefulWidget {
  const UserInput({Key key}) : super(key: key);

  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {

  String error = '';
  String searchResult = '';
  List<String> names = [];
  TextEditingController inputController = TextEditingController();
  TextEditingController searchController = TextEditingController();

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
              controller: inputController,
              decoration: InputDecoration(
                contentPadding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 10),
                hintText: 'Enter a UserInput',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              child: Container(
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ) ,
              ),
              onTap: (){
                if(inputController.value.text.isNotEmpty) {
                  setState(() {
                    names.add(inputController.value.text);
                    inputController.clear();
                    error = '';
                  });
              } else{
                  setState(() {
                    error = 'Enter Valid Input';
                  });
                }
              },
            ),
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                contentPadding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 10),
                hintText: 'Search UserInput',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              child: Container(
                child: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ) ,
              ),
                onTap: () {
                if(names.contains(searchController.value.text)){
                  setState(() {
                    searchResult = 'Name is present in the list';
                      return true;
                  });
                }else{
                  setState(() {
                      return false;
                  });
                  error = 'Name is not present in the list';
                }
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
            Text(
                error,
              style: TextStyle(
                fontSize: 15,
                color: Colors.red,
              ),
            ),
            Text(
              searchResult,
              style: TextStyle(
                fontSize: 15,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
