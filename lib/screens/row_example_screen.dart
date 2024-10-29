import 'package:flutter/material.dart';

class RowExampleScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Widget Example'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('First Row'),
              Icon(Icons.abc),
            ]        
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Second Row'),
                Icon(Icons.ac_unit)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Third Row'),
                Icon(Icons.ac_unit),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Fourth Row'),
                Icon(Icons.ac_unit),
              ],
            ),
          ],
        ),
      );
  }
}