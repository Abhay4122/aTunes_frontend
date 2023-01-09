import 'package:atunes/models/category.dart';
import 'package:atunes/services/category_operations.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget createCategory(Category category) {
    return Container(
      color: Colors.blueGrey.shade300,
      child: Row(
        children: [
          Image.network(
            category.imageUrl,
            fit: BoxFit.cover,
          ),
          Text(category.name,
              style: const TextStyle(color: Colors.white),
              Padding(
              padding: const EdgeInsets.only(8.0),
              child: Text(
                category.name,
                style: const TextStyle(color: Colors.white),)
                
              )
        ],
      ),
    );
  }

  List<Widget> createListOfCategories() {
    List<Category> categoryList = CategoryOperations.getCategories();

    List<Widget> categories = categoryList
        .map((Category category) => createCategory(category))
        .toList();

    return categories;
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
    return SizedBox(
      height: 500,
      child: GridView.count(
        crossAxisCount: 2,
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
          createGrid()
        ],
      ),
    );
  }
}
