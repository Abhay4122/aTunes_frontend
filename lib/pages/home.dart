import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          child: Material(
            color: Colors.grey[100],
            elevation: 8,
            borderRadius: BorderRadius.circular(10),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              splashColor: Colors.black26,
              onTap: () {
                print('Clicked');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Ink.image(
                    image: NetworkImage(
                      'https://res.cloudinary.com/jerrick/image/upload/v1624887730/60d9d1b22b39af001d1aa3cf.jpg',
                    ),
                    height: 144,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Song category',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Material(
            color: Colors.grey[100],
            elevation: 8,
            borderRadius: BorderRadius.circular(10),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              splashColor: Colors.black26,
              onTap: () {
                print('Clicked');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Ink.image(
                    image: NetworkImage(
                      'https://res.cloudinary.com/jerrick/image/upload/v1624887730/60d9d1b22b39af001d1aa3cf.jpg',
                    ),
                    height: 144,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Song category',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Material(
            color: Colors.grey[100],
            elevation: 8,
            borderRadius: BorderRadius.circular(10),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              splashColor: Colors.black26,
              onTap: () {
                print('Clicked');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Ink.image(
                    image: NetworkImage(
                      'https://res.cloudinary.com/jerrick/image/upload/v1624887730/60d9d1b22b39af001d1aa3cf.jpg',
                    ),
                    height: 144,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Song category',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Material(
            color: Colors.grey[100],
            elevation: 8,
            borderRadius: BorderRadius.circular(10),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              splashColor: Colors.black26,
              onTap: () {
                print('Clicked');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Ink.image(
                    image: NetworkImage(
                      'https://res.cloudinary.com/jerrick/image/upload/v1624887730/60d9d1b22b39af001d1aa3cf.jpg',
                    ),
                    height: 144,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Song category',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Material(
            color: Colors.grey[100],
            elevation: 8,
            borderRadius: BorderRadius.circular(10),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              splashColor: Colors.black26,
              onTap: () {
                print('Clicked');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Ink.image(
                    image: NetworkImage(
                      'https://res.cloudinary.com/jerrick/image/upload/v1624887730/60d9d1b22b39af001d1aa3cf.jpg',
                    ),
                    height: 144,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Song category',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Material(
            color: Colors.grey[100],
            elevation: 8,
            borderRadius: BorderRadius.circular(10),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              splashColor: Colors.black26,
              onTap: () {
                print('Clicked');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Ink.image(
                    image: NetworkImage(
                      'https://res.cloudinary.com/jerrick/image/upload/v1624887730/60d9d1b22b39af001d1aa3cf.jpg',
                    ),
                    height: 144,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Song category',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Material(
            color: Colors.grey[100],
            elevation: 8,
            borderRadius: BorderRadius.circular(10),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              splashColor: Colors.black26,
              onTap: () {
                print('Clicked');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Ink.image(
                    image: NetworkImage(
                      'https://res.cloudinary.com/jerrick/image/upload/v1624887730/60d9d1b22b39af001d1aa3cf.jpg',
                    ),
                    height: 144,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Song category',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Material(
            color: Colors.grey[100],
            elevation: 8,
            borderRadius: BorderRadius.circular(10),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              splashColor: Colors.black26,
              onTap: () {
                print('Clicked');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Ink.image(
                    image: NetworkImage(
                      'https://res.cloudinary.com/jerrick/image/upload/v1624887730/60d9d1b22b39af001d1aa3cf.jpg',
                    ),
                    height: 144,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Song category',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
