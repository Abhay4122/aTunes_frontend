import 'package:flutter/material.dart';
import './home.dart';
import './search.dart';
import './liberary.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Tabs = [const Home(), const Search(), const Library()];
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        onTap: (currentIndex) {
          print('The current index is $currentTabIndex');
          currentTabIndex = currentIndex;
          setState(() {});
        },
        backgroundColor: Colors.black45,
        selectedLabelStyle: const TextStyle(color: Colors.white),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books, color: Colors.white),
              label: 'Library')
        ],
      ),
    );
  }
}
