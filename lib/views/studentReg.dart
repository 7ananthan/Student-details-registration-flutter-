import 'package:flutter/material.dart';
import 'package:studentdetails/main.dart';

class StudentReg extends StatelessWidget {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController place = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController parentName = TextEditingController();
  TextEditingController parentPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Student Registration"),
        ),
        body: SafeArea(
          top: true,
          bottom: true,
          child: ListView(
            children: <Widget>[
              TextField(
                controller: name,
                decoration: InputDecoration(hintText: "Name"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: email,
                decoration: InputDecoration(hintText: "Email"),
              ),
              SizedBox(
                height: 10.0,
              ), TextField(
                controller: place,
                decoration: InputDecoration(hintText: "Place"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: phone,
                decoration: InputDecoration(hintText: "Phone"),
              ),
              SizedBox(
                height: 10.0,
              ), TextField(
                controller: parentName,
                decoration: InputDecoration(hintText: "Parents Name"),
              ),
              SizedBox(
                height: 10.0,
              ), TextField(
                controller: parentPhone,
                decoration: InputDecoration(hintText: "Parents Phone no."),
              ),
              SizedBox(
                height: 10.0,
              ), RaisedButton(
                child: Text("SUBMIT"),
                onPressed: (){},
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
