import 'package:nooberfood/domain/data_structures/i_recipe.dart';
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
      @required this.imageUrl});
  @override
  List<Object> get props => [description, imageUrl, unit, amount];
}
