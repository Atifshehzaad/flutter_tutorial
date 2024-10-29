import 'package:flutter/material.dart';

class ColumnExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('First Item'),
            Text('Second Item'),
            Text('Third Item'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Second Column, First Item'),
              Text('Second Column, Second Item'),
              Text('Second Column, Third Item'),
            ],
          )
          ],
        ),
      ),
    );
  }
}
