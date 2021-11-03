// 1) Create a new Flutter App (in this project) and output an AppBar and some text
//below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:first_assignment/text_control.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> coolText = ["Text 1", "Text 2", "Text 3", "Text 4"];
  int index = 0;
  void changeText(){
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("JustAnApp"),
        ),
        body: TextControl(index,coolText,changeText),
    ),
    );
  }
}
