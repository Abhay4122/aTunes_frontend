import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MySearchState();
  }
}

class MySearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search by title, movie name, gener, year',
                  ),
                ),
                Text('data')
              ],
            ),
          )
        ],
      ),
    );
  }
}
