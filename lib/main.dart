import 'package:flutter/material.dart';
import 'package:pizza/screens/home.dart';
import 'package:pizza/screens/order.dart';
import 'package:pizza/screens/review.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      routes: <String, WidgetBuilder> {
        '/Home':(BuildContext context) => Home(),
        '/Order':(BuildContext context) => Order(),
        '/Review':(BuildContext context) => Review(),
      },
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

