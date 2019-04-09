import 'package:flutter/material.dart';
import 'package:pizza/screens/review.dart';
import 'package:pizza/code/pizza.dart';

class Order extends StatefulWidget {

  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  pizza _pizzaOrder = new pizza();

  void _setSize(String value){
    setState((){
      _pizzaOrder.size = value;
    });
  }

  void _setTopping(int index,bool value){
    setState((){
      String key = _pizzaOrder.toppings.keys.elementAt(index);
      _pizzaOrder.toppings[key] = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order Pizza')),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              DropdownButton(
                value: _pizzaOrder.size,
                items: pizza.sizes.map((String value){
                  return DropdownMenuItem(
                    value: value,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.local_pizza),
                        Text('Size: ${value}'),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (String value){
                  _setSize(value);
                },
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _pizzaOrder.toppings.length,
                  itemBuilder: (BuildContext context, int index){
                    return CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(_pizzaOrder.toppings.keys.elementAt(index)),
                      value: _pizzaOrder.toppings.values.elementAt(index),
                      onChanged: (bool value){
                        _setTopping(index, value);
                      },
                    );
                  },
                )
              ),
              RaisedButton(
                child: Text('Continue'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Review(order: _pizzaOrder)
                  ));
                },
              )
            ],
          ),
        )
      ),
    );
  }
}