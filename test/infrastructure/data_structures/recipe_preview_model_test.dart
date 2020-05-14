import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:nooberfood/infrastructure/data_structures/recipe_preview_model.dart';

import '../../json/json_reader.dart';

void main() {
  test(
      "Should convert search_by_ingredients results from json to RecipePreview",
      () {
    //arrange
    final jsonData = readJsonFile("search_recipe_by_ingredients_results.json");
    //act
    final result = RecipePreviewModel.fromJson(
        json.decode(jsonData)[0] as Map<String, dynamic>);
    //assert
    expect(result, isA<RecipePreview>());
  });
  test("Should convert search_recipe results from json to RecipePreview",
      () {
    //arrange
    final jsonData = readJsonFile("search_recipe_results.json");
    //act
    final result = RecipePreviewModel.fromJson(
        json.decode(jsonData)["results"][0] as Map<String, dynamic>);
    //assert
    expect(result, isA<RecipePreview>());
  });
  test("Should convert similar_recipes results from json to RecipePreview",
      () {
    //arrange
    final jsonData = readJsonFile("similar_recipe_results.json");
    //act
    final result = RecipePreviewModel.fromJson(
        json.decode(jsonData)[0] as Map<String, dynamic>);
    //assert
    expect(result, isA<RecipePreview>());
  });
}
