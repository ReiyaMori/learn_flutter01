import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Kumasan",
      home: Text(
        "くまさん",
        style: TextStyle(fontSize: 20),
      )
    );
  }
}
