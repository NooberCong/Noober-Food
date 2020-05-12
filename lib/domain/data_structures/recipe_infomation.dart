import 'package:nooberfood/domain/data_structures/ingredient.dart';
import 'package:nooberfood/domain/data_structures/instruction.dart';
import 'package:nooberfood/domain/entites/i_recipe.dart';
import 'package:flutter/foundation.dart';

class RecipeInformation extends IRecipe {
  final bool vegetarian;
  final bool gluttenFree;
  final bool dairyFree;
  final bool healthy;
  final bool cheap;
  final double score;
  final String id;
  final String title;
  final String readyInMinutes;
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
      @required this.ingredients})
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
        assert(ingredients != null);
  @override
  List<Object> get props => throw UnimplementedError();
}
