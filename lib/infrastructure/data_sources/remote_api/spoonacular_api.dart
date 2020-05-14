import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:nooberfood/core/errors/errors.dart';
import 'package:nooberfood/core/network/network.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/infrastructure/data_sources/remote_api/i_recipe_api.dart';
import 'package:nooberfood/infrastructure/data_structures/recipe_information_model.dart';
import 'package:nooberfood/infrastructure/data_structures/recipe_preview_model.dart';
import 'package:nooberfood/keys/key.dart';

class SpoonacularApi implements IRecipeApi {
  final INetwork network;
  final http.Client client;
  static const String apiEndPoint = "api.spoonacular.com";
  static const numberOfSearchResults = 10;

  SpoonacularApi({
    @required this.network,
    @required this.client,
  });
  @override
  Future<List<RecipePreview>> requestQueryRecipes(String keyword,
      {int offset = 0, Map<String, String> userPrefs = const {}}) async {
    await _checkConnection();
    final params = {
      "query": keyword,
      "number": numberOfSearchResults.toString(),
      "apiKey": spoonacularAPIKey,
      "offset": offset.toString(),
    };
    final url = _constructUrl(
      "/recipes/search",
      params,
      userPrefs: userPrefs,
    );
    final response = await client.get(url);
    if (response.statusCode == 200) {
      return _parseJsonList<RecipePreview, Map<String, dynamic>>(
        json.decode(response.body)["results"] as List<dynamic>,
        parser: (entry) => RecipePreviewModel.fromJson(entry),
      );
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<RecipeInformation>> requestRandomRecipes(
      List<String> tags) async {
    await _checkConnection();
    final params = {
      "tags": tags.join(","),
      "apiKey": spoonacularAPIKey,
      "number": numberOfSearchResults.toString(),
    };
    final url = _constructUrl(
      "/recipes/random",
      params,
    );
    final response = await client.get(url);
    if (response.statusCode == 200) {
      return _parseJsonList<RecipeInformation, Map<String, dynamic>>(
        json.decode(response.body)["recipes"] as List<dynamic>,
        parser: (entry) => RecipeInformationModel.fromJson(entry),
      );
    } else {
      throw ServerException();
    }
  }

  @override
  Future<RecipeInformation> requestRecipeInformation(String id) async {
    await _checkConnection();
    final params = {
      "apiKey": spoonacularAPIKey,
    };
    final url = _constructUrl(
      "/recipes/$id/information",
      params,
    );
    final response = await client.get(url);
    if (response.statusCode == 200) {
      return _parseJson<RecipeInformation, Map<String, dynamic>>(
        json.decode(response.body) as Map<String, dynamic>,
        parser: (entry) => RecipeInformationModel.fromJson(entry),
      );
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<RecipePreview>> requestRecipesFromIngredients(
      List<String> ingredients) async {
    await _checkConnection();
    final params = {
      "number": numberOfSearchResults.toString(),
      "apiKey": spoonacularAPIKey,
      "ingredients": ingredients.join(","),
    };
    final url = _constructUrl(
      "/recipes/findByIngredients",
      params,
    );
    final response = await client.get(url);
    if (response.statusCode == 200) {
      return _parseJsonList<RecipePreview, Map<String, dynamic>>(
        json.decode(response.body) as List<dynamic>,
        parser: (entry) => RecipePreviewModel.fromJson(entry),
      );
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<RecipePreview>> requestSimilarRecipes(String id) async {
    await _checkConnection();
    final params = {
      "number": numberOfSearchResults.toString(),
      "apiKey": spoonacularAPIKey,
    };
    final url = _constructUrl(
      "/recipes/$id/similar",
      params,
    );
    final response = await client.get(url);
    if (response.statusCode == 200) {
      return _parseJsonList<RecipePreview, Map<String, dynamic>>(
        json.decode(response.body) as List<dynamic>,
        parser: (entry) => RecipePreviewModel.fromJson(entry),
      );
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<String>> requestSuggestions(String keyword) async {
    await _checkConnection();
    final params = {
      "query": keyword,
      "number": numberOfSearchResults.toString(),
      "apiKey": spoonacularAPIKey,
    };
    final url = _constructUrl("/recipes/autocomplete", params);
    final response = await client.get(url);
    if (response.statusCode == 200) {
      return _parseJsonList<String, Map<String, dynamic>>(
        json.decode(response.body) as List<dynamic>,
        parser: (entry) => entry["title"] as String,
      );
    } else {
      throw ServerException();
    }
  }

  Future<void> _checkConnection() async {
    final hasConnection = await network.hasInternetConnection;
    if (!hasConnection) {
      throw NoConnectionException();
    }
  }

  Uri _constructUrl(String path, Map<String, String> queryParams,
      {Map<String, String> userPrefs = const {}}) {
    queryParams.addAll(userPrefs);
    return Uri.http(
      apiEndPoint,
      path,
      queryParams,
    );
  }

  List<T> _parseJsonList<T, P>(
    List<dynamic> data, {
    @required T Function(P) parser,
  }) {
    return data.map((entry) => parser(entry as P)).toList();
  }

  T _parseJson<T, P>(
    P data, {
    @required T Function(P) parser,
  }) {
    return parser(data);
  }
}
