// class ProductModel {
//   String productName;
//   String productImage;
//   int productPrice;
//   String productId;
//   int productQuantity;
//   List<dynamic>productUnit;
//   ProductModel(
//       {
//       required this.productQuantity,
//       required this.productId,
//       required this.productUnit,
//       required this.productImage,
//       required this.productName,
//       required this.productPrice});
// }

class Product {
  static List<Item>? items;
}

class Products {
  static List<Item>? items;
}

class Item {
  final String? description;
  final String? id;
  final String? name;
  final String? imageUrl;
  final String? price;

  Item({this.id, this.name, this.imageUrl, this.price, this.description});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map['id'],
        description: map['description'],
        name: map['name'],
        imageUrl: map['imageUrl'],
        price: map['price']);
  }

  get image => null;
}
