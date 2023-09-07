import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playsound(int a) {
    final player = AudioPlayer();
    player.play(AssetSource("note$a.wav"));
  }
  TextButton buildkey({required Color color, required int soundnumber}) {
    return TextButton(
      onPressed: () {
        playsound(soundnumber);  // Use the provided soundnumber argument
      },
      style: TextButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(200, 60),
      ),
      child: Text(''),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: 500,
            // height: 900,

            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30),
                
                Text(
                  'Xylophone App', // Add the text you want
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),

                buildkey(color:Colors.tealAccent,soundnumber: 1),
                SizedBox(height: 30),

                buildkey(color:Colors.purpleAccent,soundnumber: 2),
                SizedBox(height: 30),

                buildkey(color:Colors.blueAccent,soundnumber: 3),
                SizedBox(height: 30),

                buildkey(color:Colors.red,soundnumber: 4),
                SizedBox(height: 30),

                buildkey(color:Colors.greenAccent,soundnumber: 5),
                SizedBox(height: 30),

                buildkey(color:Colors.yellowAccent,soundnumber: 6),
                SizedBox(height: 30),

                buildkey(color:Colors.orangeAccent,soundnumber: 7),
                SizedBox(height: 30),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
