import 'package:curvednavigationbar/a.dart';
import 'package:curvednavigationbar/b.dart';
import 'package:curvednavigationbar/c.dart';
import 'package:curvednavigationbar/d.dart';
import 'package:curvednavigationbar/e.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget{
  @override
  _BottomeNavBarState createState() => _BottomeNavBarState();
}
class _BottomeNavBarState extends State<BottomNavBar>{
  var _page = 0;
  final Pages = [A(),B(),C(),D(),E()];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Color.fromARGB(255, 130, 244, 54),
        buttonBackgroundColor: Colors.white,
        animationCurve: Curves.easeInExpo,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index){
          setState(() {
            _page= index;
          });
        },
        index: 0,
        items:[
        Icon(Icons.access_alarm),
        Icon(Icons.ac_unit),
        Icon(Icons.accessible),
        Icon(Icons.add_a_photo),
        Icon(Icons.favorite),
      ]),
      body: Pages[_page],
    );
  }
}

