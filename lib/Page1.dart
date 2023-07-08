import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class Music extends StatelessWidget {


  void playMusic(int num) {
    final player = AudioCache();
    player.play('music-$num.mp3');
  }

  Expanded myButton({required int mus,required Color but,required String text}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: ElevatedButton(
            style:
            ElevatedButton.styleFrom(backgroundColor: Color(0xFFFFFFFF))!,
            onPressed: () {
              playMusic(mus);

            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(Icons.music_note,color: but,),
                  SizedBox(width: 20,),
                  Text(
                    text,
                    style: TextStyle(fontSize: 20, color: but),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          title: Text(
            'Nغmat',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

   children: [
     myButton(mus: 1,but:Colors.red ,text: 'Samsung Galaxy')!,
            myButton(mus: 2,but: Colors.black,text: 'Nokia')!,
    myButton(mus: 3,but: Colors.green,text: 'Samsung Note'),
    myButton(mus: 4,but: Colors.indigo,text: 'iphone 6'),
    myButton(mus: 5,but: Colors.blue,text: 'Whats app'),
    myButton(mus: 6,but: Colors.orange,text: 'iphone 11'),
    myButton(mus: 7,but: Colors.yellow,text: 'Samsung S7'),
   ],

     )

    );
  }
}
