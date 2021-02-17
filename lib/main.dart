import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget{
  final title = 'くまおさんアプリ';
  final message = 'こんにちは、ユーザーさん';

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Kumasan",
      home: new MyHomePage(
        title: this.title,
        message: this.message
      ),
    );
  }
}

class MyHomePage extends StatefulWidget{
  final String title;
  final String message;

  MyHomePage({this.title, this.message}): super();

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title)
      ),
      body: Text(
        widget.message,
        style: TextStyle(fontSize: 32.0),
      ),
    );
  }
}