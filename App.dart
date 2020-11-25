import 'package:flutter/material.dart';

void main() => runApp(Temperature());

class Temperature extends StatelessWidget {
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
  String _text = '수칙 1';
  String _contents = '체온 측정';
  double _temp;
  String _fine = '체온에 별 이상이 없습니다';
  String _warn = '체온이 너무 높습니다';
@override
Widget build(BuildContext context) {
return Scaffold(
body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(_text, style:TextStyle(fontSize: 45)),
        Text(_contents, style:TextStyle(fontSize: 60)),
        Image.asset('images/2.png'),
        Text(_fine, style:TextStyle(fontSize: 35)),
        Text(_warn, style:TextStyle(fontSize: 35))
      ],
    ),
),


);
}
}