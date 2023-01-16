import 'package:atunes/models/category.dart';
import 'package:atunes/services/category_operations.dart';
import 'package:flutter/material.dart';
import 'package:atunes/models/music.dart';
import 'package:atunes/services/music_operations.dart';

class Home extends StatelessWidget {
  final Function _miniPlayer;
  const Home(this._miniPlayer, {super.key});

  Widget createCategory(Category category) {
    return Container(
      color: Colors.blueGrey.shade300,
      child: Row(children: [
        Image.network(
          "",
          semanticLabel: category.imageUrl,
          fit: BoxFit.cover,
          width: 70,
          height: 70,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              category.name,
              style: const TextStyle(color: Colors.white),
            ))
      ]),
    );
  }

  List<Widget> createListOfCategories() {
    List<Category> categoryList = CategoryOperations.getCategories();

    List<Widget> categories = categoryList
        .map((Category category) => createCategory(category))
        .toList();

    return categories;
  }

  Widget createMusic(Music music) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: InkWell(
                onTap: () {
                  _miniPlayer(music);
                },
                child: Image.network(music.image, fit: BoxFit.cover),
              ),
            ),
            Text(music.name, style: const TextStyle(color: Colors.white)),
            Text(music.desc, style: const TextStyle(color: Colors.white))
          ],
        ));
  }

  Widget createMusicList(String label) {
    List<Music> musicList = MusicOperations.getMusic();
    return ListView.builder(
      itemBuilder: (context, index) {
        return createMusic(musicList[index]);
      },
      itemCount: musicList.length,
    );
  }

  Widget createAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: const Text('Good morning'),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Icon(Icons.settings),
        )
      ],
    );
  }

  Widget createGrid() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 300,
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: createListOfCategories(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blueGrey.shade300,
          Colors.black,
          Colors.black,
          Colors.black
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Column(
        children: [
          createAppBar(),
          const SizedBox(
            height: 5,
          ),
          createGrid(),
          createMusicList('Made for you'),
        ],
      ),
    );
  }
}
