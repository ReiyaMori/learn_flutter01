import 'package:flutter/material.dart';
// UIファイル読み込み
import '';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XD to Flutter example',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // UI読み込み
      home: XDxd_to_flutter(),
    );
  }
}