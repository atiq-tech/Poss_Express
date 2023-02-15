import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.abc),
          title: Text("Stack Widgets"),
          centerTitle: true,
          actions: [
            Icon(Icons.zoom_out_map_outlined),
          ],
        ),
        body: Center(
          child: Container(
            color: Color.fromARGB(255, 221, 161, 247),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Color.fromARGB(255, 17, 150, 0),
                      height: 130.0,
                      width: double.infinity,
                    ),
                    Container(
                      color: Color.fromARGB(255, 10, 102, 94),
                      height: 130.0,
                      width: double.infinity,
                    ),
                  ],
                ),
                Center(
                  child: CircleAvatar(
                    radius: 90.0,
                    backgroundColor: Colors.red,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
