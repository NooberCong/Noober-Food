import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/infrastructure/data_structures/recipe_information_model.dart';

import '../../json/json_reader.dart';

void main() {
  test("Should convert data from random_recipe_results to RecipeInformation",
      () {
    //arrange
    final jsonData = readJsonFile("random_recipe_results.json");
    //act
    final result = RecipeInformationModel.fromJson(
        json.decode(jsonData)["recipes"][0] as Map<String, dynamic>);
    //assert
    expect(result, isA<RecipeInformation>());
  });
  test(
      "Should convert data from search_recipe_information to RecipeInformation",
      () {
    //arrange
    final jsonData = readJsonFile("search_recipe_information_results.json");
    //act
    final result = RecipeInformationModel.fromJson(
        json.decode(jsonData) as Map<String, dynamic>);
    //assert
    expect(result, isA<RecipeInformation>());
  });
}
