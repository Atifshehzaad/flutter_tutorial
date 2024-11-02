import 'package:flutter/material.dart';

class ColumnExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Widget Example'),
      ),
      body: Container(
        height: 600,
        width: 400,
        color: Colors.grey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('First Item'),
              Text('Second Item'),
              Text('Third Item'),
            Container(
              width: 250,
              height: 250,
              color: Colors.lightGreen,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Second Column, First Item'),
                  Text('Second Column, Second Item'),
                  Text('Second Column, Third Item'),
                ],
              ),
            )
            ],
          ),
      ),
      );
  }
}
