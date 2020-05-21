import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:nooberfood/core/errors/errors.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:nooberfood/domain/data_structures/ingredient_based_recipe_preview.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/i_persistent_data_api.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/user_preferences.dart';
import 'package:nooberfood/infrastructure/data_sources/remote_api/i_recipe_api.dart';

@RegisterAs(IRecipeRepository)
@lazySingleton
class RecipeRepository implements IRecipeRepository {
  final IRecipeApi api;
  final IPersistentDataApi persistentDataApi;
  RecipeRepository({@required this.api, @required this.persistentDataApi});
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
  Future<Either<Failure, List<IngredientBasedRecipePreview>>>
      fetchRecipesBasedOnIngredients() async {
    try {
      final userIngredients = persistentDataApi.getUserIngredients();
      final result = await api.requestRecipesFromIngredients(userIngredients);
      return Right(result);
    } on Exception catch (e) {
      return Left(_failureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<String>>> fetchSearchSuggestions(
      String keyword) async {
    try {
      final result = await api.requestSuggestions(keyword);
      return Right(result);
    } on Exception catch (e) {
      return Left(_failureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<RecipePreview>>> fetchSimilarRecipes(
      String id) async {
    try {
      final result = await api.requestSimilarRecipes(id);
      return Right(result);
    } on Exception catch (e) {
      return Left(_failureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<RecipePreview>>> searchRecipes(
      String keyword) async {
    try {
      final result = await api.requestQueryRecipes(keyword,
          userPrefs: _formatUserPrefs(persistentDataApi.getUserPreferences()));
      return Right(result);
    } on Exception catch (e) {
      return Left(_failureFromException(e));
    }
  }

  @override
  Either<Failure, List<String>> addIngredient(String ingredient) {
    try {
      return Right(persistentDataApi.addIngredient(ingredient: ingredient));
    } on Exception catch (e) {
      return Left(_failureFromException(e));
    }
  }

  @override
  Either<Failure, List<String>> removeIngredient(String ingredient) {
    try {
      return Right(persistentDataApi.removeIngredient(ingredient: ingredient));
    } on Exception catch (e) {
      return Left(_failureFromException(e));
    }
  }

  @override
  Either<Failure, List<String>> retrieveUserIngredients() {
    try {
      return Right(persistentDataApi.getUserIngredients());
    } on Exception {
      return Left(Failure.unknown());
    }
  }

  @override
  Either<Failure, UserPreferences> retrieveUserPreferences() {
    try {
      return Right(persistentDataApi.getUserPreferences());
    } on Exception {
      return Left(Failure.unknown());
    }
  }

  @override
  Either<Failure, UserPreferences> setUserPreferences(
      UserPreferences userPreferences) {
    try {
      return Right(persistentDataApi.setUserPreferences(
          userPreferences: userPreferences));
    } on Exception {
      return Left(Failure.unknown());
    }
  }

  Map<String, String> _formatUserPrefs(UserPreferences userPreferences) {
    final serializedJson = userPreferences.toJson();
    final Map<String, String> output = {};
    for (final key in serializedJson.keys) {
      final value = serializedJson[key];
      if (value is List) {
        output[key] = value.join(",");
      } else {
        output[key] = value as String;
      }
    }
    return output;
  }

  Failure _failureFromException(Exception e) {
    if (e is NoConnectionException) {
      return Failure.noconnection();
    } else if (e is ServerException) {
      return Failure.server();
    } else if (e is IngredientAlreadyAddedException) {
      return Failure.ingredientexist();
    } else if (e is IngredientNotExistException) {
      return Failure.ingredientnotexist();
    } else {
      return Failure.unknown();
    }
  }
}
