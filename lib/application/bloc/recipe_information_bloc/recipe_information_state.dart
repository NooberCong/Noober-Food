part of 'recipe_information_bloc.dart';

@freezed
@immutable
abstract class RecipeInformationState with _$RecipeInformationState {
  const factory RecipeInformationState.initial() =
      _RecipeInformationStateInitial;
  const factory RecipeInformationState.loading() =
      _RecipeInformationStateLoading;
  const factory RecipeInformationState.loaded(RecipeInformation data) =
      _RecipeInformationState;
  const factory RecipeInformationState.error(String message) =
      _RecipeInformationStateError;
}
