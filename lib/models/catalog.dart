
class CatalogModels{
  static final items=[
    Item(
        id: 1,
        name: "samsungf12",
        desc: "64gb",
        price: 7867,
        color: "#33505a",
        image: "assets/images/samsungf12.png")
  ];

}

class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

