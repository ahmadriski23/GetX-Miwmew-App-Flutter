import 'product.dart';

class CategoryProd {
  final int id;
  final String name;
  final String image;
  final List<Product> products;

  CategoryProd(
      {required this.id,
      required this.name,
      required this.image,
      required this.products});

  factory CategoryProd.fromJson(Map<String, dynamic> json) {
    return CategoryProd(
        id: json['id'],
        name: json['name'],
        image: json['image'],
        products: (json['products'] as List<dynamic>)
            .map((prodJson) => Product.fromJson(prodJson))
            .toList());
  }
}
