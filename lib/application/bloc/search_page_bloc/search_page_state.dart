part of 'search_page_bloc.dart';

@freezed
@immutable
abstract class SearchPageState with _$SearchPageState {
  const factory SearchPageState.initial() = _SearchPageStateInitial;
  const factory SearchPageState.loading() = _SearchPageStateLoading;
  const factory SearchPageState.loaded(List<RecipePreview> data) =
      _SearchPageStateLoaded;
  const factory SearchPageState.error(String message) = __SearchPageStateError;
}
