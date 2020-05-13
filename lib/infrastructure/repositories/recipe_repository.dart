import 'package:flutter/foundation.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/infrastructure/remote_api/i_recipe_api.dart';

class RecipeRepository implements IRecipeRepository {
  final IRecipeApi api;
  RecipeRepository({@required this.api});
  @override
  Future<Either<Failure, List<RecipeInformation>>> fetchRandomRecipes(
      {List<String> tags = const [""]}) {
    // TODO: implement fetchRandomRecipes
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, RecipeInformation>> fetchRecipeInformation() {
    // TODO: implement fetchRecipeInformation
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<RecipePreview>>> fetchRecipesBasedOnIngredients(
      List<String> ingredients) {
    // TODO: implement fetchRecipesBasedOnIngredients
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<String>>> fetchSearchSuggestions() {
    // TODO: implement fetchSearchSuggestions
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<RecipePreview>>> fetchSimilarRecipes() {
    // TODO: implement fetchSimilarRecipes
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<RecipePreview>>> searchRecipes() {
    // TODO: implement searchRecipes
    throw UnimplementedError();
  }
}
