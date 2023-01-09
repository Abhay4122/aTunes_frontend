import 'package:atunes/models/category.dart';

class CategoryOperations {
  static List<Category> getCategories() {
    return <Category>[
      Category("Top songs",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFMXQ9AaiPDppObCoEsKHEtxrupJqlvOARoA&usqp=CAU"),
      Category("Arijit singh songs",
          "https://play-lh.googleusercontent.com/HWOC9vbVhcVQV6ny8kg65ecBgY71SEsi44dYhUn2lqB7CXYPKmHPV8ZfOe_ASxC3SN2m=w526-h296-rw"),
      Category("MJ songs",
          "https://media.npr.org/assets/img/2018/08/27/gettyimages-88695476_wide-f3e509d06ed2821fdd92ec1ff917dfac0d983ee6-s1100-c50.jpg"),
      Category("Old songs",
          "https://play-lh.googleusercontent.com/APAQozQ0hrP8knlbowqebSIEZuP-X3r8hyx1segRAruERkKaU6mnSZH0Wrj_DekTw9M")
    ];
  }
}
