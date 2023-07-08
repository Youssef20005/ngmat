import 'package:flutter/material.dart';
import 'package:ngmat/Page1.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(app());
}
class app extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Music()

    );
  }
}


