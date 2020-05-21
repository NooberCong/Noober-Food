part of 'preferences_page_bloc.dart';

@freezed
@immutable
abstract class PreferencesPageState with _$PreferencesPageState {
  const factory PreferencesPageState.initial() = _PreferencesPageStateInitial;
  const factory PreferencesPageState.loaded(UserPreferences userPreferences) =
      _PreferencesPageStateLoaded;
  const factory PreferencesPageState.error(String message) =
      _PreferencesPageStateError;
}
