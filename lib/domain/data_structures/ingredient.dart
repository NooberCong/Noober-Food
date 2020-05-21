import 'package:nooberfood/domain/data_structures/i_recipe.dart';
import 'package:flutter/foundation.dart';

class Ingredient extends IRecipe {
  final String description;
  final String imageUrl;
  final String name;

  Ingredient(
      {@required this.description,
      @required this.name,
      @required this.imageUrl});
  @override
  List<Object> get props => [description, imageUrl, name];
}
