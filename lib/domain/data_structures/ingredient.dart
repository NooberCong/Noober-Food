import 'package:nooberfood/domain/entites/i_recipe.dart';
import 'package:flutter/foundation.dart';

class Ingredient extends IRecipe {
  final String description;
  final String imageUrl;
  final String unit;
  final double amount;

  Ingredient(
      {@required this.description,
      @required this.unit,
      @required this.amount,
      @required String image})
      : assert(description != null),
        assert(unit != null),
        assert(amount != null),
        imageUrl = "https://spoonacular.com/cdn/ingredients_500x500/$image";
  @override
  List<Object> get props => [description, imageUrl, unit, amount];
}
