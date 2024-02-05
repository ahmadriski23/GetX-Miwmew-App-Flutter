import 'package:miwmew_app/app/models/supply.dart';

class SupplyCategory {
  final int id;
  final String name;
  final List<Supply> supplies;

  SupplyCategory(
      {required this.id, required this.name, required this.supplies});

  factory SupplyCategory.fromJson(Map<String, dynamic> json) {
    return SupplyCategory(
        id: json['id'],
        name: json['name'],
        supplies: (json['supplies'] as List<dynamic>)
            .map((supJson) => Supply.fromJson(supJson))
            .toList());
  }
}
