import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:studentdetails/main.dart';
import 'package:studentdetails/models/studentmodel.dart';

Future<StudentData> createPOST(String apiurl, {Map data}) async {
  return http.post(apiurl, body: data).then((http.Response response) {
    final int statuscode = response.statusCode;
    if (statuscode != 200) {
      throw new Exception("Exception found ...!");
    }
    return (json.decode(response.body));
  });
}

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
              ),
              TextField(
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
              ),
              TextField(
                controller: parentName,
                decoration: InputDecoration(hintText: "Parents Name"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: parentPhone,
                decoration: InputDecoration(hintText: "Parents Phone no."),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text("SUBMIT"),
                onPressed: () async {
                  StudentData studentdetails = new StudentData(
                      name: name.text,
                      email: email.text,
                      place: place.text,
                      phone: phone.text,
                      parentName: parentName.text,
                      parentPhn: parentPhone.text);
                  //API Call
                  StudentData mydata = await createPOST(
                      "https://student-registration-node.herokuapp.com/studentreg",
                      data: studentdetails.toJson());
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text("Back to Menu"),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
