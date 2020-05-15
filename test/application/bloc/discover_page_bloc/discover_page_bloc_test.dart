import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nooberfood/application/bloc/discover_page_bloc/discover_page_bloc.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/usecases/get_random_recipes.dart';
import 'package:nooberfood/infrastructure/data_structures/recipe_information_model.dart';

import '../../../json/json_reader.dart';

class MockGetRandomRecipes extends Mock implements GetRandomRecipes {}

void main() {
  MockGetRandomRecipes mockGetRandomRecipes;
  DiscoverPageBloc discoverPageBloc;
  List<RecipeInformation> mockRecipeInformationList;
  setUp(() {
    mockGetRandomRecipes = MockGetRandomRecipes();
    discoverPageBloc = DiscoverPageBloc(getRandomRecipes: mockGetRandomRecipes);
    mockRecipeInformationList =
        (json.decode(readJsonFile("random_recipe_results.json"))["recipes"]
                as List<dynamic>)
            .map((entry) =>
                RecipeInformationModel.fromJson(entry as Map<String, dynamic>))
            .toList();
  });
  test("Initial state should be DiscoverPageState.initial()", () {
    //assert
    expect(discoverPageBloc.state, const DiscoverPageBlocState.initial());
  });
  test(
      "Should emit [DiscoverPageState.initial(), DiscoverPageBlocState.loadingRandomRecipes(), DiscoverPageBlocState.loadedRandomRecipes()] when usecase returns Right()",
      () {
    //arrange
    when(mockGetRandomRecipes.call(any))
        .thenAnswer((realInvocation) async => Right(mockRecipeInformationList));
    //assertLater
    final expectedStates = [
      const DiscoverPageBlocState.initial(),
      const DiscoverPageBlocState.loadingRandomRecipes(),
      DiscoverPageBlocState.loadedRandomRecipes(mockRecipeInformationList),
    ];
    expectLater(discoverPageBloc, emitsInOrder(expectedStates));
    //act
    discoverPageBloc.add(const DiscoverPageBlocEvent.getRandomRecipes([]));
  });

  test(
      "Should emit [DiscoverPageState.initial(), DiscoverPageBlocState.loadingRandomRecipes(), DiscoverPageBlocState.error()] when usecase returns Left()",
      () {
    //arrange
    when(mockGetRandomRecipes.call(any))
        .thenAnswer((realInvocation) async => Left(Failure.noconnection()));
    //assertLater
    final expectedStates = [
      const DiscoverPageBlocState.initial(),
      const DiscoverPageBlocState.loadingRandomRecipes(),
      DiscoverPageBlocState.error(messageFromFailure(Failure.noconnection())),
    ];
    expectLater(discoverPageBloc, emitsInOrder(expectedStates));
    //act
    discoverPageBloc.add(const DiscoverPageBlocEvent.getRandomRecipes([]));
  });
}
