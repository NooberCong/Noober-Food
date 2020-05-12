import 'package:flutter/foundation.dart';
import 'package:nooberfood/domain/data_structures/ingredient.dart';

class IngredientModel extends Ingredient {
  IngredientModel(
      {@required String description,
      @required String unit,
      @required double amount,
      @required String image})
      : assert(description != null),
        assert(unit != null),
        assert(amount != null),
        assert(image != null),
        super(
            amount: amount,
            unit: unit,
            description: description,
            imageUrl: "https://spoonacular.com/cdn/ingredients_500x500/$image");
  factory IngredientModel.fromJson(Map<String, dynamic> json) {
    return IngredientModel(
      unit: json["unit"] as String,
      image: json["image"] as String,
      description: json["original"] as String,
      amount: (json["amount"] as num).toDouble(),
    );
  }
}
