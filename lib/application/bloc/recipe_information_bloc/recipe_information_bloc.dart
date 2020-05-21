import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/domain/usecases/get_recipe_information.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';

part 'recipe_information_event.dart';
part 'recipe_information_state.dart';
part 'recipe_information_bloc.freezed.dart';

@injectable
class RecipeInformationBloc
    extends Bloc<RecipeInformationEvent, RecipeInformationState> {
  final GetRecipeInformation getRecipeInformation;

  RecipeInformationBloc({@required this.getRecipeInformation});
  @override
  RecipeInformationState get initialState =>
      const RecipeInformationState.initial();

  @override
  Stream<RecipeInformationState> mapEventToState(
    RecipeInformationEvent event,
  ) async* {
    if (event.idOrData is RecipeInformation) {
      yield RecipeInformationState.loaded(event.idOrData as RecipeInformation);
    } else if (event.idOrData is String) {
      yield const RecipeInformationState.loading();
      final failureOrData = await getRecipeInformation
          .call(Params.stringParams(event.idOrData as String));
      yield failureOrData.fold(
          (failure) =>
              RecipeInformationState.error(messageFromFailure(failure)),
          (data) => RecipeInformationState.loaded(data));
    } else {
      yield RecipeInformationState.error(messageFromFailure(Failure.unknown()));
    }
  }
}
