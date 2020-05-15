import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';
import 'package:nooberfood/domain/usecases/search_recipes.dart';

part 'search_page_event.dart';
part 'search_page_state.dart';

part 'search_page_bloc.freezed.dart';

@injectable
class SearchPageBloc extends Bloc<SearchPageEvent, SearchPageState> {
  final SearchRecipes searchRecipes;

  SearchPageBloc({@required this.searchRecipes});
  @override
  SearchPageState get initialState => const SearchPageState.initial();

  @override
  Stream<SearchPageState> mapEventToState(
    SearchPageEvent event,
  ) async* {
    yield const SearchPageState.loading();
    final failureOfData =
        await searchRecipes(Params.stringParams(event.keyword));
    yield failureOfData.fold(
        (failure) => SearchPageState.error(messageFromFailure(failure)),
        (data) => SearchPageState.loaded(data));
  }
}
