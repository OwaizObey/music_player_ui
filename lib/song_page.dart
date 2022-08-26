// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:music_player_ui/neu_box.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
          child: Column(
            children: [
              // Menu button and back button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: NueBox(child: Icon(Icons.arrow_back)),
                  ),
                  Text('P L A Y L I S T'),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: NueBox(child: Icon(Icons.menu)),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              //  Cover art, Artist name , Song name

              // Start time , Shuffle button , repeat button , end time

              //  Linear bar

              // previous song , pause play Skip next Song
            ],
          ),
        ),
      ),
    );
  }
}
