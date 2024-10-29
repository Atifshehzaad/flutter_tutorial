import 'package:flutter/material.dart';

class ContainerExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Widget Example'),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: Center(
            child: Text(
              'Hello!',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
