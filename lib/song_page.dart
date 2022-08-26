// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              // Darker shadow on the bottom of the right
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 15,
                offset: Offset(5, 5),
              ),
              // Lighter shadow on the top left
              BoxShadow(
                color: Colors.white,
                blurRadius: 15,
                offset: Offset(-5, -5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
