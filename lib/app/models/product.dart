class Product {
  final int id;
  final int categoryId;
  final String name;
  final String image;
  final String gender;
  final String description;
  final String price;
  final String weight;
  final String born;
  final String dateOfBirth;

  Product({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.image,
    required this.gender,
    required this.description,
    required this.price,
    required this.weight,
    required this.born,
    required this.dateOfBirth,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        categoryId: json['category_id'],
        name: json['name'],
        image: json['image'],
        gender: json['gender'],
        description: json['description'],
        price: json['price'],
        weight: json['weight'],
        born: json['born'],
        dateOfBirth: json['date_of_birth']);
  }
}
