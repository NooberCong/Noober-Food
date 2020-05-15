part of 'ingredient_page_bloc.dart';

@freezed
@immutable
abstract class IngredientPageEvent with _$IngredientPageEvent {
  factory IngredientPageEvent.retrieveUserIngredients() = _IngredientPageEventRetrieveI;
  factory IngredientPageEvent.addIngredient(String ingredient) = _IngredientPageEventAddI;
  factory IngredientPageEvent.removeIngredient(String ingredient) = _IngredientPageEventRemoveI;
}
