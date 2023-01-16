import 'package:flutter/material.dart';

class Playlist extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyPlaylistState();
  }
}

class MyPlaylistState extends State<Playlist> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('This is Playlist page'),
    );
  }
}
