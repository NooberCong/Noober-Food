import 'package:flutter/foundation.dart';
import 'package:nooberfood/domain/data_structures/i_recipe.dart';
import 'package:nooberfood/domain/data_structures/ingredient.dart';

class IngredientBasedRecipePreview extends IRecipe {
  final int id;
  final List<Ingredient> usedIngredients;
  final List<Ingredient> missingIngredients;
  final String title;
  final String imageUrl;

  IngredientBasedRecipePreview({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.usedIngredients,
    @required this.missingIngredients,
  });

  @override
  List<Object> get props =>
      [title, imageUrl, usedIngredients, missingIngredients];
}
