import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentdetails/views/firstwindow.dart';

void main ()=>runApp(Home());
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title: Text("Student details"),
        ) ,
        body: FirstWin(),
      ),
    );
  }
}
