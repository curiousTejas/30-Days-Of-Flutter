import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._internal();

  CartModel._internal();

  factory CartModel() => cartModel;

  //Catalog field
  CatalogModel _catalog;

  //Storing IDs of each item
  final List<int> _itemIDs = [];

  //Get Catalog
  CatalogModel get catalog => _catalog;

  //Set Catalog
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get Items in the cart
  List<Item> get items => _itemIDs.map((id) => _catalog.getByID(id)).toList();

  //Get Total Price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add Item
  void add(Item item) {
    _itemIDs.add(item.id);
  }

  //Remove Item
  void remove(Item item) {
    _itemIDs.remove(item.id);
  }
}
