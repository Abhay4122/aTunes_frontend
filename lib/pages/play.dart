import 'package:flutter/material.dart';

class Play extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyPlayState();
  }
}

class MyPlayState extends State<Play> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('This is Play page'),
    );
  }
}
