import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/build_method_screen.dart';
import 'package:flutter_tutorial/screens/button_example_screen.dart';
import 'package:flutter_tutorial/screens/buttons_screen.dart';
import 'package:flutter_tutorial/screens/column_example_screen.dart';
import 'package:flutter_tutorial/screens/layout_example.dart';
import 'package:flutter_tutorial/screens/layout_guide_screen.dart';
import 'package:flutter_tutorial/screens/row_column_screen.dart';
import 'package:flutter_tutorial/screens/row_example_screen.dart';
import 'package:flutter_tutorial/screens/scaffold_screen.dart';
import 'package:flutter_tutorial/screens/text_example_screen.dart';
import 'package:flutter_tutorial/screens/text_widget_info_screen.dart';
import 'screens/container_example_screen.dart'; // Import screen files here

void main() {
  runApp(const FlutterTutorial());
}

class FlutterTutorial extends StatelessWidget {
  const FlutterTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widget Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets Practice'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(5.0),
        itemExtent: 70.0,
        children: [
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('Container Example', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            subtitle: const Text('Explanation of Container Widget'),
            trailing: const Icon(Icons.arrow_forward_ios),
            tileColor: Colors.blue.shade50,
            selectedTileColor: Colors.grey,
            dense: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContainerExampleScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('Column Example'),
            tileColor: Colors.yellow.shade50,
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ColumnExampleScreen(),
                  )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('Text Example'),
            tileColor: Colors.green.shade50,
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => TextExampleScreen(),
                  )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('Row Example'),
            tileColor: Colors.blue.shade50,
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => RowExampleScreen(),
              ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('Button Example'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => ButtonExampleScreen(),
              ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('Text Widget Info Screen'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => TextWidgetInfoScreen()
                  )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('Row Column Guide'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => RowColumnGuideScreen(),
                  ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('Buttons Guide Screen'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => ButtonGuideScreen(),
                  ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('Scaffold Guide Screen'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> ScaffoldGuideScreen(),
                  )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('Build Method Guide'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder:
                  (context) =>BuildMethodGuideScreen()
                  ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('Flutter’s layout system'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder:
                    (context) => LayoutGuideScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('Layout Example (Expense Track)'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder:
                    (context) =>ExpenseTrackerScreen(),
                ),
              );
            },
          ),
          // Add more ListTile widgets here for each widget screen
        ],
      ),
    );
  }
}
