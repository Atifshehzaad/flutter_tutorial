import 'package:flutter/material.dart';

class ScaffoldGuideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Widget Guide'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and Introduction
            Text(
              'Flutter Scaffold Widget Guide',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The Scaffold widget in Flutter is a core component that provides a layout structure for Material Design. It allows adding features such as app bars, drawers, floating action buttons, and more in one unified structure. Below are explanations, code examples, and previews of the Scaffold properties.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Scaffold Property Sections
            _buildScaffoldSection(
              title: 'AppBar',
              description: 'The AppBar is a header bar at the top of the Scaffold. It often includes titles, navigation, and action buttons.',
              codeSnippet: '''
Scaffold(
  appBar: AppBar(
    title: Text('App Title'),
    backgroundColor: Colors.blueAccent,
  ),
  body: Center(child: Text('App content')),
);
''',
              child: Scaffold(
                appBar: AppBar(
                  title: Text('App Title'),
                  backgroundColor: Colors.blueAccent,
                ),
                body: Center(child: Text('App content')),
              ),
            ),

            _buildScaffoldSection(
              title: 'Drawer',
              description: 'A Drawer provides a side panel that slides in from the left side. It commonly contains navigation options or settings.',
              codeSnippet: '''
Scaffold(
  drawer: Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          child: Text('Header', style: TextStyle(color: Colors.white)),
        ),
        ListTile(title: Text('Item 1')),
      ],
    ),
  ),
  body: Center(child: Text('App content')),
);
''',
              child: Scaffold(
                drawer: Drawer(
                  child: ListView(
                    children: [
                      DrawerHeader(
                        decoration: BoxDecoration(color: Colors.blue),
                        child: Text('Header', style: TextStyle(color: Colors.white)),
                      ),
                      ListTile(title: Text('Item 1')),
                    ],
                  ),
                ),
                body: Center(child: Text('App content')),
              ),
            ),

            _buildScaffoldSection(
              title: 'FloatingActionButton',
              description: 'A FloatingActionButton (FAB) is a circular button that appears above the main content. It is often used for primary actions.',
              codeSnippet: '''
Scaffold(
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
    backgroundColor: Colors.blue,
  ),
  body: Center(child: Text('App content')),
);
''',
              child: Scaffold(
                floatingActionButton: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                  backgroundColor: Colors.blue,
                ),
                body: Center(child: Text('App content')),
              ),
            ),

            _buildScaffoldSection(
              title: 'BottomNavigationBar',
              description: 'The BottomNavigationBar is located at the bottom of the Scaffold. It provides quick navigation between top-level sections.',
              codeSnippet: '''
Scaffold(
  bottomNavigationBar: BottomNavigationBar(
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
    ],
    currentIndex: 0,
    onTap: (index) {},
  ),
  body: Center(child: Text('App content')),
);
''',
              child: Scaffold(
                bottomNavigationBar: BottomNavigationBar(
                  items: [
                    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
                  ],
                  currentIndex: 0,
                  onTap: (index) {},
                ),
                body: Center(child: Text('App content')),
              ),
            ),

            _buildScaffoldSection(
              title: 'BottomSheet',
              description: 'The BottomSheet is a persistent element at the bottom of the screen. It is useful for displaying additional information or controls.',
              codeSnippet: '''
Scaffold(
  bottomSheet: Container(
    color: Colors.grey[200],
    height: 60,
    child: Center(child: Text('Bottom Sheet Content')),
  ),
  body: Center(child: Text('App content')),
);
''',
              child: Scaffold(
                bottomSheet: Container(
                  color: Colors.grey[200],
                  height: 60,
                  child: Center(child: Text('Bottom Sheet Content')),
                ),
                body: Center(child: Text('App content')),
              ),
            ),

            _buildScaffoldSection(
              title: 'PersistentFooterButtons',
              description: 'PersistentFooterButtons are always visible at the bottom of the Scaffold and contain secondary actions, such as Cancel and Save.',
              codeSnippet: '''
Scaffold(
  persistentFooterButtons: [
    TextButton(onPressed: () {}, child: Text('Cancel')),
    TextButton(onPressed: () {}, child: Text('Save')),
  ],
  body: Center(child: Text('App content')),
);
''',
              child: Scaffold(
                persistentFooterButtons: [
                  TextButton(onPressed: () {}, child: Text('Cancel')),
                  TextButton(onPressed: () {}, child: Text('Save')),
                ],
                body: Center(child: Text('App content')),
              ),
            ),

            _buildScaffoldSection(
              title: 'backgroundColor',
              description: 'The backgroundColor property sets the background color of the entire Scaffold area. It is set to the theme’s scaffoldBackgroundColor by default.',
              codeSnippet: '''
Scaffold(
  backgroundColor: Colors.grey[200],
  body: Center(child: Text('App content')),
);
''',
              child: Scaffold(
                backgroundColor: Colors.grey[200],
                body: Center(child: Text('App content')),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScaffoldSection({
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
            height: 150,
            child: child,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
