import 'package:flutter/material.dart';

class TextWidgetInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All About Text Widgets"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Introduction
            Text(
              "Introduction to Text Widget",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "The Text widget in Flutter is used to display text with various styling options. Below, we’ll explore "
                  "the different properties and implementations of the Text widget.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Example: Basic Text Widget
            sectionTitle("1. Basic Text Widget"),
            codeExample(
              "Text('Hello, Flutter!')",
              "A simple example of a Text widget displaying a string.",
            ),
            Text(
              'Hello, Flutter!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),

            // Example: Styling Text with fontSize, fontWeight, and color
            sectionTitle("2. Styling Text"),
            codeExample(
              "Text('Styled Text', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue))",
              "Using `fontSize`, `fontWeight`, and `color` to style the text.",
            ),
            Text(
              'Styled Text',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 20),

            // Example: Text Alignment
            sectionTitle("3. Text Alignment"),
            codeExample(
              "Text('Center Aligned Text', textAlign: TextAlign.center)",
              "Using `textAlign` to center the text within the available space.",
            ),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Center Aligned Text',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),

            // Example: Text Overflow
            sectionTitle("4. Text Overflow"),
            codeExample(
              "Text('This is an overflow example text', overflow: TextOverflow.ellipsis, maxLines: 1)",
              "Using `overflow: TextOverflow.ellipsis` to indicate text overflow with ellipses.",
            ),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              child: Text(
                'This is an overflow example text that goes beyond the screen width',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),

            // Example: Text Scale Factor
            sectionTitle("5. Text Scale Factor"),
            codeExample(
              "Text('Scaled Text', textScaleFactor: 1.5)",
              "Using `textScaleFactor` to scale the size of the text without changing the font size.",
            ),
            Text(
              'Scaled Text',
              textScaleFactor: 1.5,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),

            // Example: Text Decoration
            sectionTitle("6. Text Decoration"),
            codeExample(
              "Text('Underlined Text', style: TextStyle(decoration: TextDecoration.underline))",
              "Using `decoration` to underline the text.",
            ),
            Text(
              'Underlined Text',
              style: TextStyle(fontSize: 20, decoration: TextDecoration.underline),
            ),
            SizedBox(height: 20),

            // Example: Text Shadow
            sectionTitle("7. Text Shadow"),
            codeExample(
              "Text('Shadow Text', style: TextStyle(shadows: [Shadow(offset: Offset(2, 2), blurRadius: 4, color: Colors.grey)]))",
              "Applying a shadow effect to the text using `shadows` property.",
            ),
            Text(
              'Shadow Text',
              style: TextStyle(
                fontSize: 20,
                shadows: [
                  Shadow(
                    offset: Offset(2, 2),
                    blurRadius: 4,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Example: Rich Text with Multiple Styles
            sectionTitle("8. Rich Text with Multiple Styles"),
            codeExample(
              '''RichText(
  text: TextSpan(
    style: TextStyle(fontSize: 20, color: Colors.black),
    children: [
      TextSpan(text: 'This is '),
      TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: ' and '),
      TextSpan(text: 'italic', style: TextStyle(fontStyle: FontStyle.italic)),
      TextSpan(text: ' text.')
    ]
  )
)''',
              "Using `RichText` with `TextSpan` to apply multiple styles within the same text block.",
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 20, color: Colors.black),
                children: [
                  TextSpan(text: 'This is '),
                  TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' and '),
                  TextSpan(text: 'italic', style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(text: ' text.'),
                ],
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // Widget to create section title
  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
      ),
    );
  }

  // Widget to create code example with description
  Widget codeExample(String code, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          description,
          style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey[700]),
        ),
        Container(
          width: double.infinity,
          color: Colors.grey[200],
          padding: EdgeInsets.all(8.0),
          margin: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            code,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Courier',
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
