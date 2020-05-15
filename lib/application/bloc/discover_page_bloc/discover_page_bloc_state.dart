part of 'discover_page_bloc.dart';

@freezed
@immutable
abstract class DiscoverPageBlocState with _$DiscoverPageBlocState{
  const factory DiscoverPageBlocState.initial() = _DiscoverPageBlocInitialState;
  const factory DiscoverPageBlocState.loadingRandomRecipes() = _DiscoverPageBlocLoadingState;
  const factory DiscoverPageBlocState.loadedRandomRecipes(List<RecipeInformation> data) = _DiscoverPageBlocLoadedState;
  const factory DiscoverPageBlocState.error(String message) = _DiscoverPageBlocStateError;
}
