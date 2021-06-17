class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "Google Pixel 4a",
      descriptn: "Google Pixel phone from the 4th Generation",
      price: 29999,
      color: "#000000",
      image:
          "https://images-na.ssl-images-amazon.com/images/I/7199N-Uz2AL._SX679_.jpg",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String descriptn;
  final num price;
  final String color;
  final String image;

  Item(
      {this.id, this.name, this.descriptn, this.price, this.color, this.image});
}
