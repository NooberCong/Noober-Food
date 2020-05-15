part of 'ingredient_page_bloc.dart';

@freezed
@immutable
abstract class IngredientPageState with _$IngredientPageState {
  const factory IngredientPageState.initial() = _IngredientPageStateInitial;
  const factory IngredientPageState.ingredientsRetrieved(List<String> ingredients) =
      _IngredientPageStateRetrievedI;
  const factory IngredientPageState.error(String message) = _IngredientPageStateError;
}
