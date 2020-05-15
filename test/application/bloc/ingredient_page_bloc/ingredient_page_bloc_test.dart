import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nooberfood/application/bloc/ingredient_page_bloc/ingredient_page_bloc.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/usecases/user_ingredients.dart';

class MockGetUserIngredients extends Mock implements GetUserIngredients {}

class MockAddIngredients extends Mock implements AddIngredients {}

class MockRemoveIngredients extends Mock implements RemoveIngredients {}

void main() {
  MockGetUserIngredients mockGetUserIngredients;
  MockAddIngredients mockAddIngredients;
  MockRemoveIngredients mockRemoveIngredients;
  IngredientPageBloc ingredientPageBloc;
  setUp(() {
    mockGetUserIngredients = MockGetUserIngredients();
    mockAddIngredients = MockAddIngredients();
    mockRemoveIngredients = MockRemoveIngredients();
    ingredientPageBloc = IngredientPageBloc(
        getUserIngredients: mockGetUserIngredients,
        addIngredients: mockAddIngredients,
        removeIngredients: mockRemoveIngredients);
  });
  test("Initial state should be IngredientPageState.initial()", () {
    //assert
    expect(ingredientPageBloc.state, const IngredientPageState.initial());
  });

  group("retriveUserIngredients", () {
    test(
        "Should emit [IngredientPageState.initial(), IngredientPageState.ingredientsRetrieved()] when getUserIngredients returns Right()",
        () {
      //arrange
      when(mockGetUserIngredients.call(any))
          .thenAnswer((realInvocation) async => const Right([""]));
      //assertLater
      final expectedStates = [
        const IngredientPageState.initial(),
        const IngredientPageState.ingredientsRetrieved([""])
      ];
      expectLater(ingredientPageBloc, emitsInOrder(expectedStates));
      //act
      ingredientPageBloc.add(IngredientPageEvent.retrieveUserIngredients());
    });

    test(
        "Should emit [IngredientPageState.initial(), IngredientPageState.error()] when getUserIngredients returns Left()",
        () {
      //arrange
      when(mockGetUserIngredients.call(any))
          .thenAnswer((realInvocation) async => Left(Failure.unknown()));
      //assertLater
      final expectedStates = [
        const IngredientPageState.initial(),
        IngredientPageState.error(messageFromFailure(Failure.unknown()))
      ];
      expectLater(ingredientPageBloc, emitsInOrder(expectedStates));
      //act
      ingredientPageBloc.add(IngredientPageEvent.retrieveUserIngredients());
    });
  });

  group("addIngredient", () {
    test(
        "Should emit [IngredientPageState.initial(), IngredientPageState.ingredientsRetrieved()] when getUserIngredients returns Right()",
        () {
      //arrange
      when(mockAddIngredients.call(any))
          .thenAnswer((realInvocation) async => const Right([""]));
      //assertLater
      final expectedStates = [
        const IngredientPageState.initial(),
        const IngredientPageState.ingredientsRetrieved([""])
      ];
      expectLater(ingredientPageBloc, emitsInOrder(expectedStates));
      //act
      ingredientPageBloc.add(IngredientPageEvent.addIngredient(""));
    });

    test(
        "Should emit [IngredientPageState.initial(), IngredientPageState.error()] when getUserIngredients returns Left()",
        () {
      //arrange
      when(mockAddIngredients.call(any)).thenAnswer(
          (realInvocation) async => Left(Failure.ingredientexist()));
      //assertLater
      final expectedStates = [
        const IngredientPageState.initial(),
        IngredientPageState.error(messageFromFailure(Failure.ingredientexist()))
      ];
      expectLater(ingredientPageBloc, emitsInOrder(expectedStates));
      //act
      ingredientPageBloc.add(IngredientPageEvent.addIngredient(""));
    });
  });

  group("removeIngredient", () {
    test(
        "Should emit [IngredientPageState.initial(), IngredientPageState.ingredientsRetrieved()] when getUserIngredients returns Right()",
        () {
      //arrange
      when(mockRemoveIngredients.call(any))
          .thenAnswer((realInvocation) async => const Right([""]));
      //assertLater
      final expectedStates = [
        const IngredientPageState.initial(),
        const IngredientPageState.ingredientsRetrieved([""])
      ];
      expectLater(ingredientPageBloc, emitsInOrder(expectedStates));
      //act
      ingredientPageBloc.add(IngredientPageEvent.removeIngredient(""));
    });

    test(
        "Should emit [IngredientPageState.initial(), IngredientPageState.error()] when getUserIngredients returns Left()",
        () {
      //arrange
      when(mockRemoveIngredients.call(any)).thenAnswer(
          (realInvocation) async => Left(Failure.ingredientnotexist()));
      //assertLater
      final expectedStates = [
        const IngredientPageState.initial(),
        IngredientPageState.error(
            messageFromFailure(Failure.ingredientnotexist()))
      ];
      expectLater(ingredientPageBloc, emitsInOrder(expectedStates));
      //act
      ingredientPageBloc.add(IngredientPageEvent.removeIngredient(""));
    });
  });
}
