import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nooberfood/application/bloc/recipe_information_bloc/recipe_information_bloc.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/usecases/get_recipe_information.dart';
import 'package:nooberfood/infrastructure/data_structures/recipe_information_model.dart';

import '../../../json/json_reader.dart';

class MockGetRecipeInformation extends Mock implements GetRecipeInformation {}

void main() {
  MockGetRecipeInformation mockGetRecipeInformation;
  RecipeInformationBloc recipeInformationBloc;
  RecipeInformation mockRecipeInformation;
  setUp(() {
    mockGetRecipeInformation = MockGetRecipeInformation();
    recipeInformationBloc =
        RecipeInformationBloc(getRecipeInformation: mockGetRecipeInformation);
    mockRecipeInformation = RecipeInformationModel.fromJson(
        json.decode(readJsonFile("search_recipe_information_results.json"))
            as Map<String, dynamic>);
  });
  test("Initial state should be RecipeInformationState.initial()", () {
    //assert
    expect(recipeInformationBloc.initialState,
        const RecipeInformationState.initial());
  });

  test(
      "Should emit [RecipeInformationState.initial(), RecipeInformationState.loaded()] when idOrData is RecipeInformation",
      () {
    //assertLater
    final expectedStates = [
      const RecipeInformationState.initial(),
      RecipeInformationState.loaded(mockRecipeInformation)
    ];
    expect(recipeInformationBloc, emitsInOrder(expectedStates));
    //act
    recipeInformationBloc
        .add(RecipeInformationEvent.processInputData(mockRecipeInformation));
  });

  test(
      "Should emit [RecipeInformationState.initial(), RecipeInformationState.loading(), RecipeInformationState.loaded()] when idOrData is RecipeInformation and api call is successful",
      () {
    //arrange
    when(mockGetRecipeInformation.call(any))
        .thenAnswer((realInvocation) async => Right(mockRecipeInformation));
    //assertLater
    final expectedStates = [
      const RecipeInformationState.initial(),
      const RecipeInformationState.loading(),
      RecipeInformationState.loaded(mockRecipeInformation)
    ];
    expect(recipeInformationBloc, emitsInOrder(expectedStates));
    //act
    recipeInformationBloc
        .add(const RecipeInformationEvent.processInputData("id"));
  });

  test(
      "Should emit [RecipeInformationState.initial(), RecipeInformationState.loading(), RecipeInformationState.error()] when idOrData is RecipeInformation and api call is unsuccessful",
      () {
    //arrange
    when(mockGetRecipeInformation.call(any))
        .thenAnswer((realInvocation) async => Left(Failure.noconnection()));
    //assertLater
    final expectedStates = [
      const RecipeInformationState.initial(),
      const RecipeInformationState.loading(),
      RecipeInformationState.error(messageFromFailure(Failure.noconnection()))
    ];
    expect(recipeInformationBloc, emitsInOrder(expectedStates));
    //act
    recipeInformationBloc
        .add(const RecipeInformationEvent.processInputData("id"));
  });

  test(
      "Should emit [RecipeInformationState.initial(), RecipeInformationState.loading(), RecipeInformationState.error()] when idOrData is neither RecipeInformation nor String",
      () {
    //assertLater
    final expectedStates = [
      const RecipeInformationState.initial(),
      RecipeInformationState.error(messageFromFailure(Failure.unknown()))
    ];
    expect(recipeInformationBloc, emitsInOrder(expectedStates));
    //act
    recipeInformationBloc.add(RecipeInformationEvent.processInputData(none()));
  });
}
