import 'package:flutter/material.dart';
import 'package:pizza/code/pizza.dart';

class Review extends StatelessWidget{
  pizza _pizzaOrder;
  List<String> _list = new List<String>();

  Review({order: null}){
    _pizzaOrder = order;

    _list.add("Size: ${_pizzaOrder.size}");
    _list.add(" ");
    _list.add("Toppings:");

    _pizzaOrder.toppings.forEach((String name, bool value){
      if(value) _list.add(name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Review Pizza Order"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Text('Review your order', style: TextStyle( fontWeight: FontWeight.bold ), ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _list.length,
                itemBuilder: (BuildContext context, int index){
                  return Text(_list.elementAt(index));
                },
              ),
            )

            
          ],
        ),
      )
    );
  }
}