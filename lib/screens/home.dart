import 'package:flutter/material.dart';
import 'package:pizza/screens/order.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza App'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              Image.asset('assets/pizza.png'),
              RaisedButton(
                child: Text('Order'),
                onPressed: () {
                  Navigator.of(context).pushNamed('/Order');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}