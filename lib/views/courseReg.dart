import 'package:flutter/material.dart';
import 'package:studentdetails/main.dart';

class CourseReg extends StatelessWidget {
  TextEditingController studentId = TextEditingController();
  TextEditingController courseName = TextEditingController();
  TextEditingController courseFee = TextEditingController();
  TextEditingController instructor = TextEditingController();
  TextEditingController duration = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Course Registration"),
        ),
        body: SafeArea(
          top: true,
          bottom: true,
          child: ListView(
            children: <Widget>[
              TextField(
                controller: studentId,
                decoration: InputDecoration(hintText: "Student ID"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: courseName,
                decoration: InputDecoration(hintText: "Course Name"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: courseFee,
                decoration: InputDecoration(hintText: "Course Fee"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: instructor,
                decoration: InputDecoration(hintText: "Instructor Name"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: duration,
                decoration: InputDecoration(hintText: "Duration"),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text("SUBMIT"),
                onPressed: (){

                },
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text("Back to Menu"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
