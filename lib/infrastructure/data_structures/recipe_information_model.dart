import 'package:flutter/foundation.dart';
import 'package:nooberfood/domain/data_structures/ingredient.dart';
import 'package:nooberfood/domain/data_structures/instruction.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/infrastructure/data_structures/ingredient_model.dart';
import 'package:nooberfood/infrastructure/data_structures/instruction_model.dart';

class RecipeInformationModel extends RecipeInformation {
  RecipeInformationModel(
      {@required bool vegetarian,
      @required bool glutenFree,
      @required bool dairyFree,
      @required bool healthy,
      @required bool cheap,
      @required double score,
      @required int readyInMinutes,
      @required int id,
      @required String title,
      @required String imageUrl,
      @required String summary,
      @required List<Instruction> instructions,
      @required List<Ingredient> ingredients})
      : assert(vegetarian != null),
        assert(glutenFree != null),
        assert(dairyFree != null),
        assert(healthy != null),
        assert(cheap != null),
        assert(score != null),
        assert(id != null),
        assert(title != null),
        assert(readyInMinutes != null),
        assert(imageUrl != null),
        assert(summary != null),
        assert(instructions != null),
        assert(ingredients != null),
        super(
            vegetarian: vegetarian,
            glutenFree: glutenFree,
            dairyFree: dairyFree,
            healthy: healthy,
            cheap: cheap,
            score: score,
            id: id,
            title: title,
            readyInMinutes: readyInMinutes,
            imageUrl: imageUrl,
            summary: summary,
            instructions: instructions,
            ingredients: ingredients);
  factory RecipeInformationModel.fromJson(Map<String, dynamic> json) {
    return RecipeInformationModel(
      cheap: json["cheap"] as bool,
      dairyFree: json["dairyFree"] as bool,
      vegetarian: json["vegetarian"] as bool,
      glutenFree: json["glutenFree"] as bool,
      healthy: json["veryHealthy"] as bool,
      title: json["title"] as String,
      id: (json["id"] as num).toInt(),
      imageUrl: _extractImageUrl(json),
      summary: json["summary"] as String,
      readyInMinutes: (json["readyInMinutes"] as num).toInt(),
      score: (json["spoonacularScore"] as num).toDouble(),
      instructions: _extractInstructions(json),
      ingredients: _extractIngredients(json),
    );
  }
}

List<InstructionModel> _extractInstructions(Map<String, dynamic> json) {
  if ((json["analyzedInstructions"] as List<dynamic>).isNotEmpty) {
    return (json["analyzedInstructions"][0]["steps"] as List<dynamic>)
        .map(
            (instr) => InstructionModel.fromJson(instr as Map<String, dynamic>))
        .toList();
  }
  return [];
}

List<IngredientModel> _extractIngredients(Map<String, dynamic> json) {
  return (json["extendedIngredients"] as List<dynamic>)
      .map((ingr) => IngredientModel.fromJson(ingr as Map<String, dynamic>))
      .toList();
}

String _extractImageUrl(Map<String, dynamic> json) {
  return (json["image"] as String ??
          "https://spoonacular.com/recipeImages/${json["id"]}-556x370.jpg")
      .replaceAll("556x370", "636x393");
}
