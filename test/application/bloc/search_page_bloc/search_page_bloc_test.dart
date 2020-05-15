import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nooberfood/application/bloc/search_page_bloc/search_page_bloc.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:nooberfood/domain/usecases/search_recipes.dart';
import 'package:nooberfood/infrastructure/data_structures/recipe_preview_model.dart';

import '../../../json/json_reader.dart';

class MockSearchRecipes extends Mock implements SearchRecipes {}

void main() {
  MockSearchRecipes mockSearchRecipes;
  SearchPageBloc searchPageBloc;
  List<RecipePreview> mockRecipePreviewList;
  setUp(() {
    mockSearchRecipes = MockSearchRecipes();
    searchPageBloc = SearchPageBloc(searchRecipes: mockSearchRecipes);
    mockRecipePreviewList =
        (json.decode(readJsonFile("search_recipe_results.json"))["results"]
                as List<dynamic>)
            .map((entry) =>
                RecipePreviewModel.fromJson(entry as Map<String, dynamic>))
            .toList();
  });
  test("Initial state should be DiscoverPageState.initial()", () {
    //assert
    expect(searchPageBloc.state, const SearchPageState.initial());
  });
  test(
      "Should emit [SearchPageState.initial(), SearchPageState.loading(), SearchPageState.loaded()] when usecase returns Right()",
      () {
    //arrange
    when(mockSearchRecipes.call(any))
        .thenAnswer((realInvocation) async => Right(mockRecipePreviewList));
    //assertLater
    final expectedStates = [
      const SearchPageState.initial(),
      const SearchPageState.loading(),
      SearchPageState.loaded(mockRecipePreviewList),
    ];
    expectLater(searchPageBloc, emitsInOrder(expectedStates));
    //act
    searchPageBloc.add(const SearchPageEvent.searchRecipes("keyword"));
  });

  test(
      "Should emit [DiscoverPageState.initial(), DiscoverPageBlocState.loadingRandomRecipes(), DiscoverPageBlocState.error()] when usecase returns Left()",
      () {
    //arrange
    when(mockSearchRecipes.call(any))
        .thenAnswer((realInvocation) async => Left(Failure.noconnection()));
    //assertLater
    final expectedStates = [
      const SearchPageState.initial(),
      const SearchPageState.loading(),
      SearchPageState.error(messageFromFailure(Failure.noconnection())),
    ];
    expectLater(searchPageBloc, emitsInOrder(expectedStates));
    //act
    searchPageBloc.add(const SearchPageEvent.searchRecipes("keyword"));
  });
}
