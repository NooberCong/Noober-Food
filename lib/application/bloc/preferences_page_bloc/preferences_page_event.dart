part of 'preferences_page_bloc.dart';

@freezed
@immutable
abstract class PreferencesPageEvent with _$PreferencesPageEvent {
  const factory PreferencesPageEvent.getUserPreferences() =
      _PreferencesPageEventGet;
  const factory PreferencesPageEvent.saveUserPreferences(
      UserPreferences userPreferences) = _PreferencesPageEventSave;
}
