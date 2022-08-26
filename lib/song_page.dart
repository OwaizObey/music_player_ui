// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:music_player_ui/neu_box.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
                height: 10,
              ),
              //  Cover art, Artist name , Song name

              NueBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('lib/images/cover_art.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kota The Friend',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey.shade700),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Birdie',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 32,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              // Start time , Shuffle button , repeat button , end time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('0:00 '),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('04 : 22'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //  Linear bar

              NueBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  backgroundColor: Colors.transparent,
                  percent: 0.5,
                  progressColor: Colors.green,
                  animation: true,
                  animationDuration: 1000,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  // width: MediaQuery.of(context).size.with,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // previous song , pause play Skip next Song
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                      child: NueBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 30,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: NueBox(
                          child: Icon(
                            Icons.play_arrow,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: NueBox(
                        child: Icon(
                          Icons.skip_next,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
