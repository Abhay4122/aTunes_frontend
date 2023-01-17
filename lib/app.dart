import 'package:atunes/pages/home.dart';
import 'package:atunes/pages/play_list.dart';
import 'package:atunes/pages/search.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final tabs = [Home(), Search(), Playlist()];
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('aTunes');

  void handleSearch() {
    if (customIcon.icon == Icons.search) {
      customIcon = const Icon(Icons.cancel);
      customSearchBar = const ListTile(
        leading: Icon(
          Icons.search,
          color: Colors.white,
          size: 25,
        ),
        title: TextField(
          autofocus: true,
          decoration: InputDecoration(
            hintText: 'Search song by title, movie name, gener',
            hintStyle: TextStyle(
              color: Colors.white30,
              fontSize: 18,
            ),
            border: InputBorder.none,
          ),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    } else {
      customIcon = const Icon(Icons.search);
      customSearchBar = const Text('aTunes');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customSearchBar,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                // handleSearch();
                _currentIndex = 1;
              });
            },
            icon: customIcon,
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Drawer header')),
            ListTile(
              title: Text('Header 1'),
            ),
            ListTile(
              title: Text('Header 2'),
            ),
            ListTile(
              title: Text('Header 3'),
            ),
          ],
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Playlist',
            backgroundColor: Colors.orange,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
