import 'dart:html';

import 'package:curvednavigationbar/a.dart';
import 'package:curvednavigationbar/b.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget builld(BuildContext context){
    return Scaffold(
      body: Center(
        child: RaisedButton(onPressed: (){
          Fluttertoast.showToast(msg: "Jamiul",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.blue,
          );
        },
        child: Text("Click"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class C extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Text("C",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}