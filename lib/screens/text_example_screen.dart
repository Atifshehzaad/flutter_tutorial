import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class TextExampleScreen extends StatelessWidget{
@override
  Widget build(BuildContext context) {
  const String textCode = '''
  Text(
  'Welcome to Flutter!',
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  ),
  textAlign: TextAlign.center,
  maxLines: 2,
  overflow: TextOverflow.ellipsis,
)
  ''';
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Widget Example'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          children: [
            Text('This is an Example of Text Widget.\n\n'
            ),
            Text(
                'The Text widget is fundamental in Flutter for displaying static and dynamic text.\n'
                'Important Properties:\n'
                'data: The string to display.\n'
            ),
            Text('style: Customizes the text style (color, size, weight).\n',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
            ),
            ),
            Text('textAlign: Aligns the text within its parent \n'
              '(e.g., center, left, right).\n',
                textAlign: TextAlign.right,
            ),
            Text('maxLines: Limits the number of visible lines.\n'
                '2nd line of text, // 3rd line is hidden.\n'
                '3rd line of text\n',
                maxLines: 2,
            ),
            Text('overflow: Handles text overflow, The text that is overflowing from the width of current screen will be (e.g., ellipsis for “...”).\n',
                overflow: TextOverflow.ellipsis,
            ),
            Text('Dart Code for \"Text Widget\" is:',
            textAlign: TextAlign.left,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Text(
                        textCode,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Courier', // Monospaced font for code display
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ],
        ),
      ),
    );
  }
}