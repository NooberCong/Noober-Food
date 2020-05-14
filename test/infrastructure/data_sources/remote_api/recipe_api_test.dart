import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:matcher/matcher.dart';
import 'package:http/http.dart' as http;
import 'package:nooberfood/core/errors/errors.dart';
import 'package:nooberfood/core/network/network.dart';
import 'package:nooberfood/infrastructure/data_sources/remote_api/i_recipe_api.dart';
import 'package:nooberfood/infrastructure/data_sources/remote_api/spoonacular_api.dart';
import 'package:nooberfood/infrastructure/data_structures/recipe_information_model.dart';
import 'package:nooberfood/infrastructure/data_structures/recipe_preview_model.dart';

import '../../../json/json_reader.dart';

class MockNetWork extends Mock implements INetwork {}

class MockClient extends Mock implements http.Client {}

void main() {
  MockNetWork mockNetWork;
  MockClient mockClient;
  IRecipeApi recipeApi;
  setUp(() {
    mockNetWork = MockNetWork();
    mockClient = MockClient();
    recipeApi = SpoonacularApi(client: mockClient, network: mockNetWork);
  });
  void testForExceptions() {
    test(
        "Should throw NoConnectionException if there is no internet connection",
        () {
      //arrange
      when(mockNetWork.hasInternetConnection)
          .thenAnswer((realInvocation) async => false);
      //act
      final call = recipeApi.requestQueryRecipes;
      //assert
      expect(
        () => call("keyword"),
        throwsA(
          const TypeMatcher<NoConnectionException>(),
        ),
      );
    });
    test("Should throw ServerException when call to api is unsuccessful",
        () async {
      //arrange
      when(mockNetWork.hasInternetConnection)
          .thenAnswer((realInvocation) async => true);
      when(mockClient.get(any)).thenAnswer(
        (realInvocation) async => http.Response(
          "Failed",
          500,
        ),
      );
      //act
      final call = recipeApi.requestQueryRecipes;
      //assert
      expect(
        () => call("keyword"),
        throwsA(
          const TypeMatcher<ServerException>(),
        ),
      );
    });
  }

  group("requestQueryRecipes", () {
    testForExceptions();
    setUp(() {
      when(mockNetWork.hasInternetConnection)
          .thenAnswer((realInvocation) async => true);
    });
    test("Should return List<RecipePreview> when call to api is successful",
        () async {
      //arrange
      final encodedJson = readJsonFile("search_recipe_results.json");
      when(mockClient.get(any)).thenAnswer(
        (realInvocation) async => http.Response(
          encodedJson,
          200,
        ),
      );
      //act
      final result = await recipeApi.requestQueryRecipes("keyword");
      //assert
      expect(
        result,
        (json.decode(encodedJson)["results"] as List<dynamic>)
            .map(
              (entry) =>
                  RecipePreviewModel.fromJson(entry as Map<String, dynamic>),
            )
            .toList(),
      );
    });
  });

  group("requestRandomRecipes", () {
    testForExceptions();
    setUp(() {
      when(mockNetWork.hasInternetConnection)
          .thenAnswer((realInvocation) async => true);
    });
    test("Should return List<RecipeInformation> when call to api is successful",
        () async {
      //arrange
      final encodedJson = readJsonFile("random_recipe_results.json");
      when(
        mockClient.get(any, headers: anyNamed("headers")),
      ).thenAnswer(
        (realInvocation) async => http.Response(encodedJson, 200, headers: {
          HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
        }),
      );
      //act
      final result = await recipeApi.requestRandomRecipes(const []);
      //assert
      expect(
        result,
        (json.decode(encodedJson)["recipes"] as List<dynamic>)
            .map(
              (entry) => RecipeInformationModel.fromJson(
                  entry as Map<String, dynamic>),
            )
            .toList(),
      );
    });
  });

  group("requestRecipeInformation", () {
    testForExceptions();
    setUp(() {
      when(mockNetWork.hasInternetConnection)
          .thenAnswer((realInvocation) async => true);
    });
    test("Should return RecipeInformation when call to api is successful",
        () async {
      //arrange
      final encodedJson =
          readJsonFile("search_recipe_information_results.json");
      when(mockClient.get(any)).thenAnswer(
        (realInvocation) async => http.Response(encodedJson, 200, headers: {
          HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
        }),
      );
      //act
      final result = await recipeApi.requestRecipeInformation("id");
      //assert
      expect(
        result,
        RecipeInformationModel.fromJson(
          json.decode(encodedJson) as Map<String, dynamic>,
        ),
      );
    });
  });

  group("requestRecipeFromIngredients", () {
    testForExceptions();
    setUp(() {
      when(mockNetWork.hasInternetConnection)
          .thenAnswer((realInvocation) async => true);
    });
    test("Should return List<RecipePreview> when call to api is successful",
        () async {
      //arrange
      final encodedJson =
          readJsonFile("search_recipe_by_ingredients_results.json");
      when(mockClient.get(any)).thenAnswer(
        (realInvocation) async => http.Response(
          encodedJson,
          200,
        ),
      );
      //act
      final result =
          await recipeApi.requestRecipesFromIngredients(const ["ingredient"]);
      //assert
      expect(
        result,
        (json.decode(encodedJson) as List<dynamic>)
            .map(
              (entry) =>
                  RecipePreviewModel.fromJson(entry as Map<String, dynamic>),
            )
            .toList(),
      );
    });
  });

  group("requestSimilarRecipes", () {
    testForExceptions();
    setUp(() {
      when(mockNetWork.hasInternetConnection)
          .thenAnswer((realInvocation) async => true);
    });
    test("Should return List<RecipePreview> when call to api is successful",
        () async {
      //arrange
      final encodedJson = readJsonFile("similar_recipe_results.json");
      when(mockClient.get(any)).thenAnswer(
        (realInvocation) async => http.Response(
          encodedJson,
          200,
        ),
      );
      //act
      final result = await recipeApi.requestSimilarRecipes("id");
      //assert
      expect(
        result,
        (json.decode(encodedJson) as List<dynamic>)
            .map(
              (entry) =>
                  RecipePreviewModel.fromJson(entry as Map<String, dynamic>),
            )
            .toList(),
      );
    });
  });

  group("requestSuggestions", () {
    testForExceptions();
    setUp(() {
      when(mockNetWork.hasInternetConnection)
          .thenAnswer((realInvocation) async => true);
    });
    test("Should return List<String> when call to api is successful", () async {
      //arrange
      final encodedJson = readJsonFile("search_suggestions_results.json");
      when(mockClient.get(any)).thenAnswer(
        (realInvocation) async => http.Response(
          encodedJson,
          200,
        ),
      );
      //act
      final result = await recipeApi.requestSuggestions("keyword");
      //assert
      expect(
        result,
        (json.decode(encodedJson) as List<dynamic>)
            .map(
              (entry) => entry["title"] as String,
            )
            .toList(),
      );
    });
  });
}
