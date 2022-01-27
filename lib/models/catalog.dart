class Item{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products=[
  Item(id: "hello001",
  name: "samsungf12",
  desc: "64gb",
  price: 7867,
  color: "#33505a",
  image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.samsung.com%2Fin%2Fsmartphones%2Fgalaxy-f%2Fgalaxy-f12-black-64gb-sm-f127gzkgins%2Fbuy%2F&psig=AOvVaw0GUWX0O1ak-8hxL80EovvO&ust=1643354768821000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOC_gNyz0fUCFQAAAAAdAAAAABAF")
];