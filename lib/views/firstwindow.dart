import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentdetails/views/courseReg.dart';
import 'package:studentdetails/views/studentReg.dart';

class FirstWin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text("Add Student"),
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentReg()));
            }
            ,
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            child: Text("Add Course"),
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CourseReg()));
            },
          )
        ],
      ),
    );
  }
}
