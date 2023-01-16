import 'package:atunes/models/music.dart';
import 'package:flutter/material.dart';
import './search.dart';
import './liberary.dart';
import 'home.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppStateState();
}

class _MyAppStateState extends State<MyApp> {
  // ignore: non_constant_identifier_names
  var Tabs = [];
  Music? music;
  int currentTabIndex = 0;

  Widget miniPlayer(Music music) {
    this.music = music;
    setState(() {});
    Size deviceSize = MediaQuery.of(context).size;
    // ignore: unnecessary_null_comparison
    if (music == null) {
      return const SizedBox();
    }
    return AnimatedContainer(
      duration: const Duration(microseconds: 500),
      color: Colors.blueGrey,
      height: 50,
      width: deviceSize.width,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.network(
          music.image,
          fit: BoxFit.cover,
        ),
        Text(
          music.name,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow, color: Colors.white))
      ]),
    );
  }

  @override
  void initState() {
    super.initState();
    Tabs = [Home(miniPlayer), const Search(), const Library()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // miniPlayer(music),
          BottomNavigationBar(
            currentIndex: currentTabIndex,
            onTap: (currentIndex) {
              // print('The current index is $currentTabIndex');
              currentTabIndex = currentIndex;
              setState(() {});
            },
            selectedLabelStyle: const TextStyle(color: Colors.white),
            backgroundColor: Colors.black45,
            // selectedLabelStyle: const TextStyle(color: Colors.white),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.white),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_books, color: Colors.white),
                  label: 'Library')
            ],
          ),
        ],
      ),
    );
  }
}
