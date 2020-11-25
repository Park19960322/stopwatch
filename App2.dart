import 'package:flutter/material.dart';

void main() => runApp(Distance());

class Distance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFfafafa),
        scaffoldBackgroundColor: Colors.white10,
        textTheme: TextTheme(
          body1: TextStyle(color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _text2 = '수칙 2';
  String _contents2 = '거리 유지';
  double _distance;
  String _fine2 = '적정 거리 유지중입니다.';
  String _warn2 = '거리가 너무 가깝습니다.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_text2, style:TextStyle(fontSize: 45)),
            Text(_contents2, style:TextStyle(fontSize: 60)),
            Image.asset('images/123.jpg'),
            Text(_fine2, style:TextStyle(fontSize: 35)),
            Text(_warn2, style:TextStyle(fontSize: 35))
          ],
        ),
      ),


    );
  }
}