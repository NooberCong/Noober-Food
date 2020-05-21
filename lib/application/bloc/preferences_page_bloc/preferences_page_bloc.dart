import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/usecases/i_usecases.dart';
import 'package:nooberfood/domain/usecases/user_preferences.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/user_preferences.dart';

part 'preferences_page_bloc.freezed.dart';
part 'preferences_page_event.dart';
part 'preferences_page_state.dart';

@injectable
class PreferencesPageBloc
    extends Bloc<PreferencesPageEvent, PreferencesPageState> {
  final GetUserPreferences getUserPreferences;
  final SetUserPreferences setUserPreferences;
  PreferencesPageBloc(
      {@required this.setUserPreferences, @required this.getUserPreferences});
  @override
  PreferencesPageState get initialState => const PreferencesPageState.initial();

  @override
  Stream<PreferencesPageState> mapEventToState(
    PreferencesPageEvent event,
  ) async* {
    yield* event.when(getUserPreferences: () async* {
      final userPrefsOrFailure =
          await getUserPreferences.call(Params.noParams());
      yield userPrefsOrFailure.fold(
          (failure) => PreferencesPageState.error(messageFromFailure(failure)),
          (data) => PreferencesPageState.loaded(data));
    }, saveUserPreferences: (userPreferences) async* {
      final userPrefsOrFailure = await setUserPreferences
          .call(Params.userPrefsParams(userPreferences));
      yield userPrefsOrFailure.fold(
          (failure) => PreferencesPageState.error(messageFromFailure(failure)),
          (data) => PreferencesPageState.loaded(data));
    });
  }
}
