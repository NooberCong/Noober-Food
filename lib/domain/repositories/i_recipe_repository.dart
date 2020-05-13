import 'package:dartz/dartz.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';

abstract class IRecipeRepository {
  Future<Either<Failure, List<RecipeInformation>>> fetchRandomRecipes(
      {List<String> tags});
  Future<Either<Failure, List<RecipePreview>>> searchRecipes();
  Future<Either<Failure, List<RecipePreview>>> fetchSimilarRecipes();
  Future<Either<Failure, RecipeInformation>> fetchRecipeInformation();
  Future<Either<Failure, List<String>>> fetchSearchSuggestions();
  Future<Either<Failure, List<RecipePreview>>> fetchRecipesBasedOnIngredients(
      List<String> ingredients);
}
