part of 'discover_page_bloc.dart';

@freezed
@immutable
abstract class DiscoverPageBlocEvent with _$DiscoverPageBlocEvent{
  const factory DiscoverPageBlocEvent.getRandomRecipes(List<String> tags) = _GetRandomRecipes;
}
