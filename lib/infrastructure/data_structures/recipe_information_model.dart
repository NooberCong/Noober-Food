import 'package:flutter/foundation.dart';
import 'package:nooberfood/domain/data_structures/ingredient.dart';
import 'package:nooberfood/domain/data_structures/instruction.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/infrastructure/data_structures/ingredient_model.dart';
import 'package:nooberfood/infrastructure/data_structures/instruction_model.dart';

class RecipeInformationModel extends RecipeInformation {
  RecipeInformationModel(
      {@required bool vegetarian,
      @required bool gluttenFree,
      @required bool dairyFree,
      @required bool healthy,
      @required bool cheap,
      @required double score,
      @required int readyInMinutes,
      @required String id,
      @required String title,
      @required String imageUrl,
      @required String summary,
      @required List<Instruction> instructions,
      @required List<Ingredient> ingredients})
      : assert(vegetarian != null),
        assert(gluttenFree != null),
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
            gluttenFree: gluttenFree,
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
      gluttenFree: json["gluttenFree"] as bool,
      healthy: json["veryHealthy"] as bool,
      title: json["title"] as String,
      id: json["id"] as String,
      imageUrl: json["image"] as String,
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
    return (json["analyzedInstructions"]["steps"] as List<Map<String, dynamic>>)
        .map((instr) => InstructionModel.fromJson(instr))
        .toList();
  }
  return [];
}

List<IngredientModel> _extractIngredients(Map<String, dynamic> json) {
  return (json["extendedIngredients"] as List<Map<String, dynamic>>)
      .map((ingr) => IngredientModel.fromJson(ingr))
      .toList();
}
