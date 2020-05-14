import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';

abstract class IRecipeApi {
  Future<List<RecipeInformation>> requestRandomRecipes(List<String> tags);
  Future<List<RecipePreview>> requestRecipesFromIngredients(
      List<String> ingredients);
  Future<List<RecipePreview>> requestSimilarRecipes(String id);
  Future<List<RecipePreview>> requestQueryRecipes(String keyword,
      {Map<String, String> userPrefs});
  Future<RecipeInformation> requestRecipeInformation(String id);
  Future<List<String>> requestSuggestions(String keyword);
}
