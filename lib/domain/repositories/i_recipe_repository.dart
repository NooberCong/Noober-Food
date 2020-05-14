import 'package:dartz/dartz.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';

abstract class IRecipeRepository {
  Future<Either<Failure, List<RecipeInformation>>> fetchRandomRecipes(List<String> tags);
  Future<Either<Failure, List<RecipePreview>>> searchRecipes(String keyword);
  Future<Either<Failure, List<RecipePreview>>> fetchSimilarRecipes(String id);
  Future<Either<Failure, RecipeInformation>> fetchRecipeInformation(String id);
  Future<Either<Failure, List<String>>> fetchSearchSuggestions(String keyword);
  Future<Either<Failure, List<RecipePreview>>> fetchRecipesBasedOnIngredients(
      List<String> ingredients);
}
