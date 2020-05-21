import 'package:flutter/foundation.dart';
import 'package:nooberfood/domain/data_structures/ingredient.dart';
import 'package:nooberfood/domain/data_structures/ingredient_based_recipe_preview.dart';
import 'package:nooberfood/infrastructure/data_structures/ingredient_model.dart';

class IngredientBasedRecipePreviewModel extends IngredientBasedRecipePreview {
  IngredientBasedRecipePreviewModel({
    @required int id,
    @required List<Ingredient> usedIngredients,
    @required List<Ingredient> missingIngredients,
    @required String title,
    @required String imageUrl,
  })  : assert(usedIngredients != null),
        assert(missingIngredients != null),
        assert(title != null),
        assert(imageUrl != null),
        super(
            id: id,
            usedIngredients: usedIngredients,
            missingIngredients: missingIngredients,
            title: title,
            imageUrl: imageUrl);
  factory IngredientBasedRecipePreviewModel.fromJson(
      Map<String, dynamic> json) {
    return IngredientBasedRecipePreviewModel(
        id: (json["id"] as num).toInt(),
        imageUrl: _extractImageUrl(json),
        title: json["title"] as String,
        usedIngredients: (json["usedIngredients"] as List<dynamic>)
            .map((entry) =>
                IngredientModel.fromJson(entry as Map<String, dynamic>))
            .toList(),
        missingIngredients: (json["missedIngredients"] as List<dynamic>)
            .map((entry) =>
                IngredientModel.fromJson(entry as Map<String, dynamic>))
            .toList());
  }
}

String _extractImageUrl(Map<String, dynamic> json) {
  if (json["image"] != null) {
    return (json["image"] as String).replaceAll("312x231", "636x393");
  } else {
    return "https://spoonacular.com/recipeImages/${json["id"]}-636x393.${json["imageType"]}";
  }
}
