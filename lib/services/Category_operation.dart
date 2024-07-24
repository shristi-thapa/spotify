import 'package:sootify/models/category.dart';

class CategoryOperations {
  CategoryOperations._() {}
  static List<Category> getCategories() {
    return <Category>[
      Category('top Songs',
          'https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/44/17/3c/44173c67-fc77-2bc3-a54e-c275c89f71bd/AppIcon-0-1x_U007emarketing-0-7-0-85-220.png/256x256bb.jpg'),
      Category('mj songs',
          'https://assets2.setlisting.cdn.crowds.dk/artists/4ea1dab2349f745fc90006cb/michael-jackson-37aa5d79a9.jpg'),
      Category('top Songs',
          'https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/44/17/3c/44173c67-fc77-2bc3-a54e-c275c89f71bd/AppIcon-0-1x_U007emarketing-0-7-0-85-220.png/256x256bb.jpg'),
      Category('mj songs',
          'https://assets2.setlisting.cdn.crowds.dk/artists/4ea1dab2349f745fc90006cb/michael-jackson-37aa5d79a9.jpg'),
    ];
  }
}
