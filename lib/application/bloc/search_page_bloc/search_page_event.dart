part of 'search_page_bloc.dart';

@freezed
@immutable
abstract class SearchPageEvent with _$SearchPageEvent {
  const factory SearchPageEvent.searchRecipes(String keyword) =
      _SearchPageSearchEvent;
}
