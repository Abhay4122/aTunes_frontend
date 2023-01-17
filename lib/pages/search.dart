import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MySearchState();
  }
}

class MySearchState extends State<Search> {
  var searchResp = [];

  handleSearch(String value) async {
    Response res =
        await get('http://atunes.cimsedu.com/search-song?_serch=$value');

    if (res.statusCode == 200) {
      print(jsonDecode(res.body));
    } else {
      throw "Unable to retrieve posts.";
    }
    // var client = HttpClient();
    // try {
    //   HttpClientRequest request = await client.getUrl(
    //       Uri.parse('http://atunes.cimsedu.com/search-song?_serch=$value'));
    //   // Optionally set up headers...
    //   // Optionally write to the request object...
    //   HttpClientResponse response = await request.close();
    //   // Process the response
    //   final stringData = await response.transform(utf8.decoder).join();
    //   print(stringData);
    // } finally {
    //   client.close();
    // }
  }

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
                  autofocus: true,
                  onChanged: (value) {
                    print(value);
                    // handleSearch(value);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text('Hello'),
                ),
                ListTile(
                  title: Text('Hello'),
                ),
                ListTile(
                  title: Text('Hello'),
                ),
                ListTile(
                  title: Text('Hello'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
