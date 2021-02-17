import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Kumasan",
      home: Scaffold(
        appBar: AppBar(
          title: Text('くまおさんアプリ'),
        ),
        body: Text(
          'こんにちは、ユーザーさん',
          style: TextStyle(fontSize: 32.0),
        ),
      )
    );
  }
}
