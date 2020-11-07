//--- Github : https://github.com/ranggadev
//--- Let's visit My Github and give me your star and questions
//--- Code with ❤ by Rangga Saputra from Indonesia


import 'package:dynamic_dependent_dropdown/ConventionalDependentDropdown1.dart';
import 'package:dynamic_dependent_dropdown/ConventionalDependentDropdown2.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic Dependent Dropdown\nby ranggadev"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>
                ConventionalDependentDropdown1()
              )),
              child: Text("Conventional Dynamic Dependent Dropdown Ex #1")
            ),

            RaisedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>
                ConventionalDependentDropdown2()
              )),
              child: Text("Conventional Dynamic Dependent Dropdown Ex #2")
            )
          ],
        ),
      ),
    );
  }
}