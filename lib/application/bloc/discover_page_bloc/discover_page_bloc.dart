import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/usecases/get_random_recipes.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';

part 'discover_page_event.dart';
part 'discover_page_bloc_state.dart';

part 'discover_page_bloc.freezed.dart';

@injectable
class DiscoverPageBloc
    extends Bloc<DiscoverPageBlocEvent, DiscoverPageBlocState> {
  final GetRandomRecipes getRandomRecipes;

  DiscoverPageBloc({@required this.getRandomRecipes});
  @override
  DiscoverPageBlocState get initialState =>
      const DiscoverPageBlocState.initial();

  @override
  Stream<DiscoverPageBlocState> mapEventToState(
    DiscoverPageBlocEvent event,
  ) async* {
    yield const DiscoverPageBlocState.loadingRandomRecipes();
    final failureOrRandomRecipes =
        await getRandomRecipes(Params.stringListParams(event.tags));
    yield failureOrRandomRecipes.fold(
        (failure) => DiscoverPageBlocState.error(messageFromFailure(failure)),
        (data) => DiscoverPageBlocState.loadedRandomRecipes(data));
  }
}
