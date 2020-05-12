import 'package:nooberfood/domain/data_structures/i_recipe.dart';
import 'package:nooberfood/domain/data_structures/ingredient.dart';
import 'package:nooberfood/domain/data_structures/instruction.dart';
import 'package:flutter/foundation.dart';

class RecipeInformation extends IRecipe {
  final bool vegetarian;
  final bool gluttenFree;
  final bool dairyFree;
  final bool healthy;
  final bool cheap;
  final double score;
  final int readyInMinutes;
  final String id;
  final String title;
  final String imageUrl;
  final String summary;
  final List<Instruction> instructions;
  final List<Ingredient> ingredients;

  RecipeInformation(
      {@required this.vegetarian,
      @required this.gluttenFree,
      @required this.dairyFree,
      @required this.healthy,
      @required this.cheap,
      @required this.score,
      @required this.id,
      @required this.title,
      @required this.readyInMinutes,
      @required this.imageUrl,
      @required this.summary,
      @required this.instructions,
      @required this.ingredients});
  @override
  List<Object> get props => [
        vegetarian,
        gluttenFree,
        dairyFree,
        healthy,
        cheap,
        score,
        id,
        title,
        readyInMinutes,
        imageUrl,
        summary,
        instructions,
        ingredients
      ];
}
