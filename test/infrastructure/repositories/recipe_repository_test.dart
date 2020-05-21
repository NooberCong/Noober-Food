import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nooberfood/core/errors/errors.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/ingredient_based_recipe_preview.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/i_persistent_data_api.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/user_preferences.dart';
import 'package:nooberfood/infrastructure/data_sources/remote_api/i_recipe_api.dart';
import 'package:nooberfood/infrastructure/data_structures/ingredient_based_recipe_preview_model.dart';
import 'package:nooberfood/infrastructure/data_structures/recipe_information_model.dart';
import 'package:nooberfood/infrastructure/data_structures/recipe_preview_model.dart';
import 'package:nooberfood/infrastructure/repositories/recipe_repository.dart';

import '../../json/json_reader.dart';

class MockRecipeApi extends Mock implements IRecipeApi {}

class MockPersistentDataApi extends Mock implements IPersistentDataApi {}

void main() {
  MockRecipeApi mockRecipeApi;
  MockPersistentDataApi mockPersistentDataApi;
  IRecipeRepository recipeRepository;
  List<RecipePreview> mockRecipePreviewList;
  List<RecipeInformation> mockRecipeInformationList;
  List<IngredientBasedRecipePreview> mockIngredientsBasedRecipePreviewList;
  List<String> mockSuggestions;
  setUp(() {
    mockRecipeApi = MockRecipeApi();
    mockPersistentDataApi = MockPersistentDataApi();
    recipeRepository = RecipeRepository(
        api: mockRecipeApi, persistentDataApi: mockPersistentDataApi);
    mockRecipePreviewList =
        (json.decode(readJsonFile("search_recipe_results.json"))["results"]
                as List<dynamic>)
            .map((entry) =>
                RecipePreviewModel.fromJson(entry as Map<String, dynamic>))
            .toList();
    mockRecipeInformationList =
        (json.decode(readJsonFile("random_recipe_results.json"))["recipes"]
                as List<dynamic>)
            .map((entry) =>
                RecipeInformationModel.fromJson(entry as Map<String, dynamic>))
            .toList();
    mockSuggestions =
        (json.decode(readJsonFile("search_suggestions_results.json"))
                as List<dynamic>)
            .map((entry) => entry["title"] as String)
            .toList();
    mockIngredientsBasedRecipePreviewList =
        (json.decode(readJsonFile("search_recipe_by_ingredients_results.json"))
                as List<dynamic>)
            .map((entry) => IngredientBasedRecipePreviewModel.fromJson(
                entry as Map<String, dynamic>))
            .toList();
  });

  group("searcRecipes", () {
    final mockUserPrefs = UserPreferences.fromJson(json
        .decode(readJsonFile("user_preferences.json")) as Map<String, dynamic>);
    setUp(() {
      when(mockPersistentDataApi.getUserPreferences())
          .thenReturn(mockUserPrefs);
    });
    test("Should return Right(List<RecipePreview>) when api call is successful",
        () async {
      //arrange
      when(
        mockRecipeApi.requestQueryRecipes(
          any,
          userPrefs: anyNamed("userPrefs"),
        ),
      ).thenAnswer((realInvocation) async => mockRecipePreviewList);
      //act
      final result = await recipeRepository.searchRecipes("id");
      //assert
      expect(result, Right(mockRecipePreviewList));
    });

    test("Should return Left(Failure) when NoConnectionException is thrown",
        () async {
      //arrange
      when(mockRecipeApi.requestQueryRecipes(
        any,
        userPrefs: anyNamed("userPrefs"),
      )).thenThrow(NoConnectionException());
      //act
      final result = await recipeRepository.searchRecipes("id");
      //assert
      expect(result, Left(Failure.noconnection()));
    });

    test("Should return Left(Failure) when ServerException is thrown",
        () async {
      //arrange
      when(mockRecipeApi.requestQueryRecipes(
        any,
        userPrefs: anyNamed("userPrefs"),
      )).thenThrow(ServerException());
      //act
      final result = await recipeRepository.searchRecipes("id");
      //assert
      expect(result, Left(Failure.server()));
    });
  });

  group("fetchRandomRecipes", () {
    test(
        "Should return Right(List<RecipeInformation>) when api call is successful",
        () async {
      //arrange
      when(
        mockRecipeApi.requestRandomRecipes(
          any,
        ),
      ).thenAnswer((realInvocation) async => mockRecipeInformationList);
      //act
      final result = await recipeRepository.fetchRandomRecipes(const []);
      //assert
      expect(result, Right(mockRecipeInformationList));
    });

    test("Should return Left(Failure) when NoConnectionException is thrown",
        () async {
      //arrange
      when(mockRecipeApi.requestRandomRecipes(any))
          .thenThrow(NoConnectionException());
      //act
      final result = await recipeRepository.fetchRandomRecipes(const []);
      //assert
      expect(result, Left(Failure.noconnection()));
    });

    test("Should return Left(Failure) when ServerException is thrown",
        () async {
      //arrange
      when(mockRecipeApi.requestRandomRecipes(any))
          .thenThrow(ServerException());
      //act
      final result = await recipeRepository.fetchRandomRecipes(const []);
      //assert
      expect(result, Left(Failure.server()));
    });
  });

  group("fetchRecipeInformation", () {
    test("Should return Right(RecipeInformation) when api call is successful",
        () async {
      //arrange
      when(
        mockRecipeApi.requestRecipeInformation(
          any,
        ),
      ).thenAnswer((realInvocation) async => mockRecipeInformationList[0]);
      //act
      final result = await recipeRepository.fetchRecipeInformation("id");
      //assert
      expect(result, Right(mockRecipeInformationList[0]));
    });

    test("Should return Left(Failure) when NoConnectionException is thrown",
        () async {
      //arrange
      when(mockRecipeApi.requestRecipeInformation(any))
          .thenThrow(NoConnectionException());
      //act
      final result = await recipeRepository.fetchRecipeInformation("id");
      //assert
      expect(result, Left(Failure.noconnection()));
    });

    test("Should return Left(Failure) when ServerException is thrown",
        () async {
      //arrange
      when(mockRecipeApi.requestRecipeInformation(any))
          .thenThrow(ServerException());
      //act
      final result = await recipeRepository.fetchRecipeInformation("id");
      //assert
      expect(result, Left(Failure.server()));
    });
  });

  group("fetchRecipesBasedOnIngredients", () {
    test(
        "Should return Right(List<IngredientBasedRecipePreview>) when api call is successful",
        () async {
      //arrange
      when(
        mockRecipeApi.requestRecipesFromIngredients(
          any,
        ),
      ).thenAnswer(
          (realInvocation) async => mockIngredientsBasedRecipePreviewList);
      //act
      final result = await recipeRepository.fetchRecipesBasedOnIngredients();
      //assert
      expect(result, Right(mockIngredientsBasedRecipePreviewList));
    });

    test("Should return Left(Failure) when NoConnectionException is thrown",
        () async {
      //arrange
      when(mockRecipeApi.requestRecipesFromIngredients(any))
          .thenThrow(NoConnectionException());
      //act
      final result = await recipeRepository.fetchRecipesBasedOnIngredients();
      //assert
      expect(result, Left(Failure.noconnection()));
    });

    test("Should return Left(Failure) when ServerException is thrown",
        () async {
      //arrange
      when(mockRecipeApi.requestRecipesFromIngredients(any))
          .thenThrow(ServerException());
      //act
      final result = await recipeRepository.fetchRecipesBasedOnIngredients();
      //assert
      expect(result, Left(Failure.server()));
    });
  });

  group("fetchSimilarRecipes", () {
    test("Should return Right(List<RecipePreview>) when api call is successful",
        () async {
      //arrange
      when(
        mockRecipeApi.requestSimilarRecipes(
          any,
        ),
      ).thenAnswer((realInvocation) async => mockRecipePreviewList);
      //act
      final result = await recipeRepository.fetchSimilarRecipes("id");
      //assert
      expect(result, Right(mockRecipePreviewList));
    });

    test("Should return Left(Failure) when NoConnectionException is thrown",
        () async {
      //arrange
      when(mockRecipeApi.requestSimilarRecipes(any))
          .thenThrow(NoConnectionException());
      //act
      final result = await recipeRepository.fetchSimilarRecipes("id");
      //assert
      expect(result, Left(Failure.noconnection()));
    });

    test("Should return Left(Failure) when ServerException is thrown",
        () async {
      //arrange
      when(mockRecipeApi.requestSimilarRecipes(any))
          .thenThrow(ServerException());
      //act
      final result = await recipeRepository.fetchSimilarRecipes("id");
      //assert
      expect(result, Left(Failure.server()));
    });
  });

  group("fetchSearchSuggestions", () {
    test("Should return Right(List<String>) when api call is successful",
        () async {
      //arrange
      when(
        mockRecipeApi.requestSuggestions(
          any,
        ),
      ).thenAnswer((realInvocation) async => mockSuggestions);
      //act
      final result = await recipeRepository.fetchSearchSuggestions("keyword");
      //assert
      expect(result, Right(mockSuggestions));
    });

    test("Should return Left(Failure) when NoConnectionException is thrown",
        () async {
      //arrange
      when(mockRecipeApi.requestSuggestions(any))
          .thenThrow(NoConnectionException());
      //act
      final result = await recipeRepository.fetchSearchSuggestions("keyword");
      //assert
      expect(result, Left(Failure.noconnection()));
    });

    test("Should return Left(Failure) when ServerException is thrown",
        () async {
      //arrange
      when(mockRecipeApi.requestSuggestions(any)).thenThrow(ServerException());
      //act
      final result = await recipeRepository.fetchSearchSuggestions("keyword");
      //assert
      expect(result, Left(Failure.server()));
    });
  });
}
