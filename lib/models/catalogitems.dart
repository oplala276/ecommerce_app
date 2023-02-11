class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iphone12",
        desc: "this is iphone",
        price: 56468,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2KLW0rr6c_jyAj839vXXvIJO89xH5ACiGtw&usqp=CAU"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [];
