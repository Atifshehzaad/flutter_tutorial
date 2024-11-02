import 'package:flutter/material.dart';

class ButtonGuideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Button Guide'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'Flutter Button Guide',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            // Introduction
            Text(
              'Flutter provides several button widgets for performing various actions. Here’s a guide on the different types of buttons, their properties, and how to use them:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // ElevatedButton
            _buildButtonSection(
              'ElevatedButton',
              'An elevated button that adds depth to flat layouts. Often used for primary actions.',
              '''
ElevatedButton(
  onPressed: () {
    // Perform action
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue, // Button background color
    foregroundColor: Colors.white, // Text color
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  ),
  child: Text('Elevated Button'),
)
''',
              child: ElevatedButton(
                onPressed: () {
                  print('Elevated Button Pressed.');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                child: Text('Elevated Button'),
              ),
            ),

            // TextButton
            _buildButtonSection(
              'TextButton',
              'A flat button without elevation. Ideal for less important actions like "Cancel" or "Learn More".',
              '''
TextButton(
  onPressed: () {
    // Perform action
  },
  style: TextButton.styleFrom(
    foregroundColor: Colors.blue, // Text color
  ),
  child: Text('Text Button'),
)
''',
              child: TextButton(
                onPressed: () {
                  print('Text Button Pressed.');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue,
                ),
                child: Text('Text Button'),
              ),
            ),

            // OutlinedButton
            _buildButtonSection(
              'OutlinedButton',
              'A button with an outlined border, without a filled background. Used for secondary actions.',
              '''
OutlinedButton(
  onPressed: () {
    // Perform action
  },
  style: OutlinedButton.styleFrom(
    foregroundColor: Colors.blue, // Text color
    side: BorderSide(color: Colors.blue), // Border color
  ),
  child: Text('Outlined Button'),
)
''',
              child: OutlinedButton(
                onPressed: () {
                  print('outlined Button Pressed.');
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  side: BorderSide(color: Colors.blue),
                ),
                child: Text('Outlined Button'),
              ),
            ),

            // IconButton
            _buildButtonSection(
              'IconButton',
              'A button that displays an icon without a visible border or background. Often used in toolbars or for compact actions.',
              '''
IconButton(
  icon: Icon(Icons.favorite),
  color: Colors.red,
  onPressed: () {
    // Perform action
  },
)
''',
              child: IconButton(
                icon: Icon(Icons.favorite),
                color: Colors.red,
                onPressed: () {
                  print('Icon Button Pressed.');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonSection(String buttonType, String description, String code, {required Widget child}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Button Type
          Text(
            buttonType,
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
              code,
              style: TextStyle(
                fontFamily: 'Courier', // Monospaced font for code display
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
          ),
          SizedBox(height: 10),

          // Live Preview
          child,
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
