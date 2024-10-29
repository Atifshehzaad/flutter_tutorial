import 'package:flutter/material.dart';

class ButtonExampleScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Widget Example'),
        backgroundColor: Colors.blue,
        ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed:() {
                  print('Elevated Button Pressed.');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,

                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: Text('Press Me',
                  style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),)
            ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: (){
                      print('Text Buttn Pressed.');
              },
                      child: Text('I am a Text Button',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                      ),
              ),
              ],
              ),
          ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                      onPressed: (){
                        print('Outlined Button Pressed.');
                      },
                      child: Text('I am Outlined Button',
                      style: TextStyle(
                        color: Colors.orange,
                      ),),),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite),
                    color: Colors.red,
                    tooltip: 'Favorite',
                    onPressed: () {
                      print('IconButton Pressed');
                    },
                  )
                ],
              ),
            ),
          Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('Styled Elevated Button Pressed.');// Perform action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Background color
                    foregroundColor: Colors.white, // Text color
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text('Elevated Button'),
                )


              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}