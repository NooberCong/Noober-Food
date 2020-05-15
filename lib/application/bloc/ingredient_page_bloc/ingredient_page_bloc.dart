import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';
import 'package:nooberfood/domain/usecases/user_ingredients.dart';

part 'ingredient_page_event.dart';
part 'ingredient_page_state.dart';

part 'ingredient_page_bloc.freezed.dart';

@injectable
class IngredientPageBloc
    extends Bloc<IngredientPageEvent, IngredientPageState> {
  final GetUserIngredients getUserIngredients;
  final AddIngredients addIngredients;
  final RemoveIngredients removeIngredients;

  IngredientPageBloc(
      {@required this.getUserIngredients,
      @required this.addIngredients,
      @required this.removeIngredients});
  @override
  IngredientPageState get initialState => const IngredientPageState.initial();

  @override
  Stream<IngredientPageState> mapEventToState(
    IngredientPageEvent event,
  ) async* {
    yield* event.when(
        retrieveUserIngredients: _retrieveUserIngredients,
        addIngredient: _addIngredient,
        removeIngredient: _removeIngredient);
  }

  Stream<IngredientPageState> _retrieveUserIngredients() async* {
    final failureOrData = await getUserIngredients(Params.noParams());
    yield failureOrData.fold(
        (failure) => IngredientPageState.error(messageFromFailure(failure)),
        (data) => IngredientPageState.ingredientsRetrieved(data));
  }

  Stream<IngredientPageState> _addIngredient(String ingredient) async* {
    final failureOrData = await addIngredients(Params.stringParams(ingredient));
    yield failureOrData.fold(
        (failure) => IngredientPageState.error(messageFromFailure(failure)),
        (data) => IngredientPageState.ingredientsRetrieved(data));
  }

  Stream<IngredientPageState> _removeIngredient(String ingredient) async* {
    final failureOrData =
        await removeIngredients(Params.stringParams(ingredient));
    yield failureOrData.fold(
        (failure) => IngredientPageState.error(messageFromFailure(failure)),
        (data) => IngredientPageState.ingredientsRetrieved(data));
  }
}
