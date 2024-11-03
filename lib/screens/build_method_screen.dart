import 'package:flutter/material.dart';

class BuildMethodGuideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Build Method Guide'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and Introduction
            Text(
              'Understanding the Widget Build Method',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The `build` method in Flutter is an essential part of how Flutter constructs its UI. Each widget has a `build` method that is responsible for describing its part of the UI using other, lower-level widgets. Here’s a complete guide to the `build` method, including explanations, examples, and common practices.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Explanation of the Build Method
            _buildExplanationSection(
              title: 'What is the build Method?',
              description: 'The `build` method is a required function in both `StatelessWidget` and `StatefulWidget`. It is responsible for constructing the UI each time it is called. Whenever the widget’s state or dependencies change, the `build` method is triggered to update the UI tree.',
            ),

            _buildExplanationSection(
              title: 'build Method Syntax',
              description: 'The `build` method returns a `Widget` and takes `BuildContext` as a parameter. `BuildContext` contains information about the position of the widget in the widget tree and gives access to other properties of the widget.',
              codeSnippet: '''
@override
Widget build(BuildContext context) {
  return Container(
    child: Text('Hello, Flutter!'),
  );
}
''',
            ),

            _buildExampleSection(
              title: 'Example: StatelessWidget build',
              description: 'In a `StatelessWidget`, the `build` method is called only once when the widget is first created. It will only be called again if the widget’s parent triggers a rebuild.',
              codeSnippet: '''
class SimpleTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hello, StatelessWidget!'),
    );
  }
}
''',
              child: Center(
                child: Text(
                  'Hello, StatelessWidget!',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            _buildExampleSection(
              title: 'Example: StatefulWidget build',
              description: 'In a `StatefulWidget`, the `build` method is called every time the state changes. This allows the widget to update dynamically in response to user actions or other events.',
              codeSnippet: '''
class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Counter: \$counter'),
        ElevatedButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Text('Increment'),
        ),
      ],
    );
  }
}
''',
              child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  int counter = 0;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Counter: $counter',
                        style: TextStyle(fontSize: 18),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counter++;
                          });
                        },
                        child: Text('Increment'),
                      ),
                    ],
                  );
                },
              ),
            ),

            _buildExplanationSection(
              title: 'BuildContext in the build Method',
              description: 'The `BuildContext` parameter provides the widget with information about its location in the widget tree. This context is essential for accessing inherited widget data, localization, themes, and navigating between screens.',
              codeSnippet: '''
@override
Widget build(BuildContext context) {
  return Text(
    'Theme color',
    style: TextStyle(color: Theme.of(context).primaryColor),
  );
}
''',
            ),

            _buildExplanationSection(
              title: 'Rebuild Triggers',
              description: 'In `StatelessWidget`, the `build` method is only triggered if the widget’s parent requests a rebuild. In `StatefulWidget`, the `build` method is triggered whenever `setState()` is called or when dependencies change.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExplanationSection({
    required String title,
    required String description,
    String? codeSnippet,
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

          // Code Snippet (if available)
          if (codeSnippet != null)
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
        ],
      ),
    );
  }

  Widget _buildExampleSection({
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













