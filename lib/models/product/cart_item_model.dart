import 'package:json_annotation/json_annotation.dart';

part 'cart_item_model.g.dart';

@JsonSerializable()
class CartItemModel {
  final String title;
  final String image;
  int amount;

  CartItemModel(
      {required this.title, required this.image, required this.amount});

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartItemModelToJson(this);
}
