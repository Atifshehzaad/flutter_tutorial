import 'package:flutter/material.dart';

class LayoutGuideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Layout Guide'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and Introduction
            Text(
              'Understanding Flutter Layouts',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter’s layout system allows for flexible and responsive designs. Flutter widgets can be arranged in various ways using layout widgets such as Column, Row, Stack, Expanded, and Align. Below is a guide explaining each layout widget with examples.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Column Widget
            _buildLayoutSection(
              title: 'Column',
              description: 'The Column widget arranges its children vertically. It has properties like mainAxisAlignment and crossAxisAlignment to control spacing and alignment.',
              codeSnippet: '''
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
);
''',
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Item 1'),
                  Text('Item 2'),
                  Text('Item 3'),
                ],
              ),
            ),

            // Row Widget
            _buildLayoutSection(
              title: 'Row',
              description: 'The Row widget arranges its children horizontally. It has similar properties to Column, such as mainAxisAlignment and crossAxisAlignment, but arranges widgets along the horizontal axis.',
              codeSnippet: '''
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Icon(Icons.star, color: Colors.orange),
    Icon(Icons.star, color: Colors.blue),
    Icon(Icons.star, color: Colors.red),
  ],
);
''',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.blue),
                  Icon(Icons.star, color: Colors.red),
                ],
              ),
            ),

            // Stack Widget
            _buildLayoutSection(
              title: 'Stack',
              description: 'The Stack widget overlays its children on top of each other, allowing them to be positioned absolutely within the Stack using Positioned widgets.',
              codeSnippet: '''
Stack(
  children: [
    Container(color: Colors.blue, height: 100, width: 100),
    Positioned(
      top: 10,
      left: 10,
      child: Container(color: Colors.red, height: 50, width: 50),
    ),
    Positioned(
      bottom: 10,
      right: 10,
      child: Container(color: Colors.green, height: 30, width: 30),
    ),
  ],
);
''',
              child: Stack(
                children: [
                  Container(color: Colors.blue, height: 100, width: 100),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(color: Colors.red, height: 50, width: 50),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(color: Colors.green, height: 30, width: 30),
                  ),
                ],
              ),
            ),

            // Expanded Widget
            _buildLayoutSection(
              title: 'Expanded',
              description: 'The Expanded widget is used within a Row or Column to allow a child widget to take up remaining space. Expanded can be used to make items flexible and responsive.',
              codeSnippet: '''
Row(
  children: [
    Expanded(
      child: Container(color: Colors.red, height: 50),
    ),
    Expanded(
      child: Container(color: Colors.green, height: 50),
    ),
    Expanded(
      child: Container(color: Colors.blue, height: 50),
    ),
  ],
);
''',
              child: Row(
                children: [
                  Expanded(
                    child: Container(color: Colors.red, height: 50),
                  ),
                  Expanded(
                    child: Container(color: Colors.green, height: 50),
                  ),
                  Expanded(
                    child: Container(color: Colors.blue, height: 50),
                  ),
                ],
              ),
            ),

            // Align Widget
            _buildLayoutSection(
              title: 'Align',
              description: 'The Align widget positions a child widget within itself. It uses alignment properties to position the widget, such as topLeft, center, bottomRight, and more.',
              codeSnippet: '''
Align(
  alignment: Alignment.bottomRight,
  child: Container(color: Colors.purple, width: 60, height: 60),
);
''',
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(color: Colors.purple, width: 60, height: 60),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLayoutSection({
    required String title,
    required String description,
    required String codeSnippet,
    required Widget child,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          SizedBox(height: 5),

          // Description
          Text(
            description,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),

          // Code Example
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey[200],
            child: Text(
              codeSnippet,
              style: TextStyle(
                fontFamily: 'Courier', // Monospaced font for code display
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
          ),
          SizedBox(height: 10),

          // Live Preview
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey[100],
            child: child,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
