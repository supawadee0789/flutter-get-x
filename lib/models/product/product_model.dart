import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String? image;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image});

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  static List<ProductModel> fromJsonList(List json) =>
      json.map((e) => ProductModel.fromJson(e)).toList();

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
