import 'package:flutter/foundation.dart';
import 'package:nooberfood/domain/data_structures/ingredient.dart';

class IngredientModel extends Ingredient {
  IngredientModel(
      {@required String description,
      @required String name,
      @required String image})
      : assert(description != null),
        assert(name != null),
        super(
            description: description,
            name: name,
            imageUrl: "https://spoonacular.com/cdn/ingredients_500x500/$image");
  factory IngredientModel.fromJson(Map<String, dynamic> json) {
    return IngredientModel(
      image: _extractImage(json),
      description: json["original"] as String,
      name: json["name"] as String,
    );
  }
}

String _extractImage(Map<String, dynamic> json) {
  return json["image"] as String ??
      "https://spoonacular.com/cdn/ingredients_500x500/notfound.jpg";
}
