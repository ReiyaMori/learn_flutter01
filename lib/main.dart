import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget{

  final title = 'くまおさんアプリ';

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: this.title,
      home: new MyHomePage(
        title: this.title,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget{


  MyHomePage({this.title}): super();

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  String _message;
  int _counter = 0;

  //メッセージ初期値の指定
  @override
  void initState(){
    super.initState();
    _message = 'こんにちは、ユーザーさん';
  }

  //変更後のメッセージ
  void _setMessage(){
    setState(() {
      if(_counter%2==0){
        _message = 'くまおです';
        _counter++;
      }else{
        _message = 'こんにちは、ユーザーさん';
        _counter++;
      }

    });
  }

  //画面のビルド
  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Text(
        '$_message $_counter',
        style: TextStyle(fontSize: 25.0),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _setMessage,
        tooltip: 'set message.',
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}