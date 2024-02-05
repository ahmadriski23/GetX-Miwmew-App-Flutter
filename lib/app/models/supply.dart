class Supply {
  final int id;
  final int supplyCategoryId;
  final String name;
  final String image;
  final int price;
  final String description;

  Supply({
    required this.id,
    required this.supplyCategoryId,
    required this.name,
    required this.image,
    required this.price,
    required this.description,
  });

  factory Supply.fromJson(Map<String, dynamic> json) {
    return Supply(
      id: json['id'],
      supplyCategoryId: json['supply_category_id'],
      name: json['name'],
      image: json['image'],
      price: json['price'],
      description: json['description'],
    );
  }
}
