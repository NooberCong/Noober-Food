import 'package:flutter/foundation.dart';
import 'package:nooberfood/core/errors/errors.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/infrastructure/data_sources/remote_api/i_recipe_api.dart';

class RecipeRepository implements IRecipeRepository {
  final IRecipeApi api;
  RecipeRepository({@required this.api});
  @override
  Future<Either<Failure, List<RecipeInformation>>> fetchRandomRecipes(
      List<String> tags) async {
    try {
      final result = await api.requestRandomRecipes(tags);
      return Right(result);
    } on Exception catch (e) {
      return Left(_failureFromException(e));
    }
  }

  @override
  Future<Either<Failure, RecipeInformation>> fetchRecipeInformation(
      String id) async {
    try {
      final result = await api.requestRecipeInformation(id);
      return Right(result);
    } on Exception catch (e) {
      return Left(_failureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<RecipePreview>>> fetchRecipesBasedOnIngredients(
      List<String> ingredients) async {
    try {
      final result = await api.requestRecipesFromIngredients(ingredients);
      return Right(result);
    } on Exception catch (e) {
      return Left(_failureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<String>>> fetchSearchSuggestions(String keyword) async {
    try {
      final result = await api.requestSuggestions(keyword);
      return Right(result);
    } on Exception catch (e) {
      return Left(_failureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<RecipePreview>>> fetchSimilarRecipes(String id) async {
    try {
      final result = await api.requestSimilarRecipes(id);
      return Right(result);
    } on Exception catch (e) {
      return Left(_failureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<RecipePreview>>> searchRecipes(
    String keyword, {
    Map<String, String> userPrefs = const {},
  }) async {
    try {
      final result =
          await api.requestQueryRecipes(keyword, userPrefs: userPrefs);
      return Right(result);
    } on Exception catch (e) {
      return Left(_failureFromException(e));
    }
  }

  Failure _failureFromException(Exception e) {
    if (e is NoConnectionException) {
      return Failure.noconnection();
    } else if (e is ServerException) {
      return Failure.server();
    } else {
      return Failure.unknown();
    }
  }
}
