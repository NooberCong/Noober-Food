part of 'recipe_information_bloc.dart';

@freezed
@immutable
abstract class RecipeInformationEvent with _$RecipeInformationEvent {
  const factory RecipeInformationEvent.processInputData(dynamic idOrData) =
      _RecipeInformationEventProcess;
}
