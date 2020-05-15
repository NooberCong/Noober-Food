import 'package:dartz/dartz.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/user_preferences.dart';

abstract class IRecipeRepository {
  Future<Either<Failure, List<RecipeInformation>>> fetchRandomRecipes(
      List<String> tags);
  Future<Either<Failure, List<RecipePreview>>> searchRecipes(String keyword);
  Future<Either<Failure, List<RecipePreview>>> fetchSimilarRecipes(String id);
  Future<Either<Failure, RecipeInformation>> fetchRecipeInformation(String id);
  Future<Either<Failure, List<String>>> fetchSearchSuggestions(String keyword);
  Future<Either<Failure, List<RecipePreview>>> fetchRecipesBasedOnIngredients(
      List<String> ingredients);

  Either<Failure, UserPreferences> retrieveUserPreferences();
  Either<Failure, List<String>> retrieveUserIngredients();
  Either<Failure, UserPreferences> setUserPreferences(
      UserPreferences userPreferences);
  Either<Failure, List<String>> addIngredient(String ingredient);
  Either<Failure, List<String>> removeIngredient(String ingredient);
}
