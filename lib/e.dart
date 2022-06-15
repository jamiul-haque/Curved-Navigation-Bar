import 'package:flutter/material.dart';


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
  var _value = 10.0;
  
}
class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
    var _value;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Jamiul Haque", style: TextStyle(fontSize:_value),),
          SizedBox(height: 30,),
          Slider(
            max: 30,
            min: 10,
            value: _value, onChanged: (value){
              setState(() {
               _value = value;
               print(_value);
              });
            })
        ],
      ),
    );
  }
}

class E extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Object? selected = "Choose";
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(selected,style: TextStyle(fontSize: 50),
            ),
            DropdownButton(
              iconSize: 30,
              items: [DropdownMenuItem(
              value: "Jamiul",
              child: Text("Jamiul"),
              ),
              DropdownMenuItem(
              value: "Haque",
              child: Text("Haque"),
              ),
            ], onChanged: (Val){
              setState((){
               selected =Val;
              });
            })
          ],
        )
      ),
    );
  }
}

void setState(Null Function() param0) {
}