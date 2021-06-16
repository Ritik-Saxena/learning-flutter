import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() => runApp(TravelApp());

class TravelApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
