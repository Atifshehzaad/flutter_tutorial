import 'package:flutter/material.dart';

class RowColumnGuideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row and Column Guide'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'Flutter Row and Column Guide',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            // Introduction
            Text(
              'The Row and Column widgets are foundational layout widgets in Flutter. They allow you to arrange children widgets horizontally (Row) or vertically (Column). Here’s a guide to their properties and usage:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Row Properties
            Text(
              'Row Widget Properties',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(color: Colors.blueAccent),

            // Row - mainAxisAlignment
            _buildPropertySection(
              'mainAxisAlignment',
              'Controls the horizontal alignment of the children within the Row. Options include start, end, center, spaceBetween, spaceAround, and spaceEvenly.',
              '''
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Icon(Icons.star),
    Icon(Icons.star),
    Icon(Icons.star),
  ],
)
''',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                ],
              ),
            ),

            // Row - crossAxisAlignment
            _buildPropertySection(
              'crossAxisAlignment',
              'Controls the vertical alignment of the children within the Row. Options include start, end, center, stretch, and baseline.',
              '''
Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Icon(Icons.star, size: 30),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 40),
  ],
)
''',
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.star, size: 30, color: Colors.red),
                  Icon(Icons.star, size: 50, color: Colors.red),
                  Icon(Icons.star, size: 40, color: Colors.red),
                ],
              ),
            ),

            // Row - mainAxisSize
            _buildPropertySection(
              'mainAxisSize',
              'Determines whether the Row should take up the maximum available width or only as much space as its children need. Options are max and min.',
              '''
Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star),
    Icon(Icons.star),
  ],
)
''',
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.green),
                  Icon(Icons.star, color: Colors.green),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Column Properties
            Text(
              'Column Widget Properties',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(color: Colors.blueAccent),

            // Column - mainAxisAlignment
            _buildPropertySection(
              'mainAxisAlignment',
              'Controls the vertical alignment of the children within the Column. Options include start, end, center, spaceBetween, spaceAround, and spaceEvenly.',
              '''
Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Icon(Icons.circle, size: 30),
    Icon(Icons.circle, size: 50),
    Icon(Icons.circle, size: 40),
  ],
)
''',
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.circle, size: 30, color: Colors.blue),
                  Icon(Icons.circle, size: 50, color: Colors.blue),
                  Icon(Icons.circle, size: 40, color: Colors.blue),
                ],
              ),
            ),

            // Column - crossAxisAlignment
            _buildPropertySection(
              'crossAxisAlignment',
              'Controls the horizontal alignment of the children within the Column. Options include start, end, center, stretch, and baseline.',
              '''
Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    Icon(Icons.circle, size: 30),
    Icon(Icons.circle, size: 50),
    Icon(Icons.circle, size: 40),
  ],
)
''',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.circle, size: 30, color: Colors.purple),
                  Icon(Icons.circle, size: 50, color: Colors.purple),
                  Icon(Icons.circle, size: 40, color: Colors.purple),
                ],
              ),
            ),

            // Column - mainAxisSize
            _buildPropertySection(
              'mainAxisSize',
              'Determines whether the Column should take up the maximum available height or only as much space as its children need. Options are max and min.',
              '''
Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.circle),
    Icon(Icons.circle),
  ],
)
''',
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.circle, color: Colors.teal),
                  Icon(Icons.circle, color: Colors.teal),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPropertySection(String propertyName, String description, String code, {required Widget child}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Property Name
          Text(
            propertyName,
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
