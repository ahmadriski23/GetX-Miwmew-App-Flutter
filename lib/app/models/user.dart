class User {
  final int id;
  final String name;
  final String email;
  final String image;
  final String dateOfBirth;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.image,
      required this.dateOfBirth});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        image: json['image'],
        dateOfBirth: json['date_of_birth']);
  }
}
