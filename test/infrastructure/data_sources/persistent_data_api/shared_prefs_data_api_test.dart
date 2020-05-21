import 'dart:convert';

import 'package:matcher/matcher.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nooberfood/core/errors/errors.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/i_persistent_data_api.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/shared_prefs_data_api.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/user_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../json/json_reader.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  MockSharedPreferences mockSharedPreferences;
  IPersistentDataApi persistentDataApi;
  List<String> mockIngrients;
  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    persistentDataApi =
        SharedPreferencesDataApi(sharedPreferences: mockSharedPreferences);
    mockIngrients = ["mock_ingredient_1", "mock_ingredient_2"];
  });

  group("UserPreferences", () {
    test("Should return defaultUserPrefs when sharedPreferences returns null",
        () {
      //arrange
      final expectedUserPrefs = UserPreferences.fromJson(defaultUserPref);
      when(mockSharedPreferences.getString(any)).thenReturn(null);
      //act
      final result = persistentDataApi.getUserPreferences();
      //assert
      expect(result, expectedUserPrefs);
    });
    test(
        "Should set new UserPreferences with correct values when user set their preferences",
        () {
      //arrange
      when(mockSharedPreferences.getString(any))
          .thenReturn(readJsonFile("user_preferences.json"));
      //act
      final userPrefsBefore = persistentDataApi.getUserPreferences();
      final userPrefsAfter = userPrefsBefore.copyWith(
          cuisine: userPrefsBefore.cuisine..add("Vietnamese"));
      persistentDataApi.setUserPreferences(userPreferences: userPrefsAfter);
      //assert
      verify(mockSharedPreferences.setString(
          userPrefsKey, json.encode(userPrefsAfter.toJson())));
    });
  });

  group("UserIngredients", () {
    test("Should return empty list when sharedPrefs returns null", () {
      //arrange
      when(mockSharedPreferences.getStringList(any)).thenReturn(null);
      //act
      final userIngredients = persistentDataApi.getUserIngredients();
      //assert
      expect(userIngredients.length, 0);
    });

    test("Should add new ingredient from list when user add ingredient", () {
      //arrange
      when(mockSharedPreferences.getStringList(any)).thenReturn(mockIngrients);
      //act
      final ingredientsBefore = persistentDataApi.getUserIngredients();
      final result =
          persistentDataApi.addIngredient(ingredient: "mock_ingredient_3");
      final expectedIngredientsAfter = ingredientsBefore
        ..add("mock_ingredient_3");
      //assert
      expect(result, expectedIngredientsAfter);
    });

    test(
        "Should throw IngredientAlreadyAddedException when user tries to add an existing ingredient",
        () {
      //arrange
      when(mockSharedPreferences.getStringList(any)).thenReturn(mockIngrients);
      //act
      final call = persistentDataApi.addIngredient;
      //assert
      expect(() => call(ingredient: "mock_ingredient_2"),
          throwsA(const TypeMatcher<IngredientAlreadyAddedException>()));
    });

    test("Should remove ingredient from list when user remove ingredient", () {
      //arrange
      when(mockSharedPreferences.getStringList(any)).thenReturn(mockIngrients);
      //act
      final ingredientsBefore = persistentDataApi.getUserIngredients();
      final result =
          persistentDataApi.removeIngredient(ingredient: "mock_ingredient_1");
      final expectedIngredientsAfter = ingredientsBefore
        ..remove("mock_ingredient_1");
      //assert
      expect(result, expectedIngredientsAfter);
    });

    test(
        "Should throw IngredientNotExistException when user remove ingredient that is not in list",
        () {
      //arrange
      when(mockSharedPreferences.getStringList(any)).thenReturn(mockIngrients);
      //act
      final call = persistentDataApi.removeIngredient;
      //assert
      expect(() => call(ingredient: "mock_ingredient_3"),
          throwsA(const TypeMatcher<IngredientNotExistException>()));
    });
  });
}
