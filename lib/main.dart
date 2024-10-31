import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/button_example_screen.dart';
import 'package:flutter_tutorial/screens/column_example_screen.dart';
import 'package:flutter_tutorial/screens/row_column_screen.dart';
import 'package:flutter_tutorial/screens/row_example_screen.dart';
import 'package:flutter_tutorial/screens/text_example_screen.dart';
import 'package:flutter_tutorial/screens/text_widget_info_screen.dart';
import 'screens/container_example_screen.dart'; // Import screen files here

void main() {
  runApp(FlutterTutorial());
}

class FlutterTutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widget Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets Practice'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(5.0),
        itemExtent: 70.0,
        children: [
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Container Example', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            subtitle: Text('Explaination of Container Widget'),
            trailing: Icon(Icons.arrow_forward_ios),
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
            leading: Icon(Icons.ac_unit),
            title: Text('Column Example'),
            tileColor: Colors.yellow.shade50,
            trailing: Icon(Icons.arrow_forward_ios),
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
            leading: Icon(Icons.ac_unit),
            title: Text('Text Example'),
            tileColor: Colors.green.shade50,
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => TextExampleScreen(),
                  )
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Row Example'),
            tileColor: Colors.blue.shade50,
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => RowExampleScreen(),
              ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Button Example'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => ButtonExampleScreen(),
              ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Text Widget Info Screen'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => TextWidgetInfoScreen()
                  )
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Row Column Guide'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => RowColumnGuideScreen(),
                  ),
              );
            },
          ),// Add more ListTile widgets here for each widget screen
        ],
      ),
    );
  }
}
