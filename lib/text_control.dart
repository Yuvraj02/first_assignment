import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {

  int index;
  List<String> coolText;
  Function changeText;

  TextControl(this.index,this.coolText,this.changeText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height:double.infinity ,
        width: double.infinity,
        child: Column(
        children: [Text(index < 4 ?coolText[index]:"No text Left"),ElevatedButton(onPressed: (){changeText();}, child: const Text("Press Me"))],
    ),
    );
  }
}
