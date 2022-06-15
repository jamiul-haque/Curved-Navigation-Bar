import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Damo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState () => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: RaisedButton(onPressed: (){
          showDialog(context: context, builder: (context){
            return Dialog(
              child: Stack(
                alignment: Alignment.topCenter,
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        new Text("Alert Dialog",
                        style: TextStyle(
                          fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.blue,
                        ),
                        )
                        SizedBox(
                          height: 20,
                        ),
                        new Text("This is an Alert Dialog. Alert Dialog is very useful and very easy to use.",
                        style: TextStyle(
                          fontFamily: "Segoe UI",
                          fontSize: 20,
                          color: Colors.blue,
                        ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -50,
                  child: CircleAvatar(
                  radius: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    child: Image.asset("images/flower.jpg")),
                ))

                ],
              ),
            );
          });
        }),
      ),
    );
  }
}
class A extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text("A",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}