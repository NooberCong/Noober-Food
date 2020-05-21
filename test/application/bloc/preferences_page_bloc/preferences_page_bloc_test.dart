import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nooberfood/application/bloc/preferences_page_bloc/preferences_page_bloc.dart';
import 'package:nooberfood/core/failures/failure.dart';
import 'package:nooberfood/domain/usecases/user_preferences.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/user_preferences.dart';

import '../../../json/json_reader.dart';

class MockGetUserPreferences extends Mock implements GetUserPreferences {}

class MockSetUserPreferences extends Mock implements SetUserPreferences {}

void main() {
  MockGetUserPreferences mockGetUserPreferences;
  MockSetUserPreferences mockSetUserPreferences;
  PreferencesPageBloc preferencesPageBloc;
  UserPreferences mockUserPreferences;
  setUp(() {
    mockGetUserPreferences = MockGetUserPreferences();
    mockSetUserPreferences = MockSetUserPreferences();
    preferencesPageBloc = PreferencesPageBloc(
        getUserPreferences: mockGetUserPreferences,
        setUserPreferences: mockSetUserPreferences);
    mockUserPreferences = UserPreferences.fromJson(json
        .decode(readJsonFile("user_preferences.json")) as Map<String, dynamic>);
  });

  test("Initial State should be PreferencesPageState.initial()", () {
    //assert
    expect(preferencesPageBloc.state, const PreferencesPageState.initial());
  });

  group("Get user preferences", () {
    test(
        "Should emit [PreferencesPageState.initial(), PreferencesPageState.loaded()] when persistent data api call is successful",
        () {
      //arrange
      when(mockGetUserPreferences.call(any))
          .thenAnswer((realInvocation) async => Right(mockUserPreferences));
      //assertLater
      final expectedStates = [
        const PreferencesPageState.initial(),
        PreferencesPageState.loaded(mockUserPreferences)
      ];
      expectLater(preferencesPageBloc, emitsInOrder(expectedStates));
      //act
      preferencesPageBloc.add(const PreferencesPageEvent.getUserPreferences());
    });

    test(
        "Should emit [PreferencesPageState.initial(), PreferencesPageState.error()] when persistent data api call is successful",
        () {
      //arrange
      when(mockGetUserPreferences.call(any))
          .thenAnswer((realInvocation) async => Left(Failure.unknown()));
      //assertLater
      final expectedStates = [
        const PreferencesPageState.initial(),
        PreferencesPageState.error(messageFromFailure(Failure.unknown()))
      ];
      expectLater(preferencesPageBloc, emitsInOrder(expectedStates));
      //act
      preferencesPageBloc.add(const PreferencesPageEvent.getUserPreferences());
    });
  });

  group("Set user preferences", () {
    test(
        "Should emit [PreferencesPageState.initial(), PreferencesPageState.loaded()] when persistent data api call is successful",
        () {
      //arrange
      when(mockSetUserPreferences.call(any))
          .thenAnswer((realInvocation) async => Right(mockUserPreferences));
      //assertLater
      final expectedStates = [
        const PreferencesPageState.initial(),
        PreferencesPageState.loaded(mockUserPreferences)
      ];
      expectLater(preferencesPageBloc, emitsInOrder(expectedStates));
      //act
      preferencesPageBloc
          .add(PreferencesPageEvent.saveUserPreferences(mockUserPreferences));
    });

    test(
        "Should emit [PreferencesPageState.initial(), PreferencesPageState.error()] when persistent data api call is successful",
        () {
      //arrange
      when(mockSetUserPreferences.call(any))
          .thenAnswer((realInvocation) async => Left(Failure.unknown()));
      //assertLater
      final expectedStates = [
        const PreferencesPageState.initial(),
        PreferencesPageState.error(messageFromFailure(Failure.unknown()))
      ];
      expectLater(preferencesPageBloc, emitsInOrder(expectedStates));
      //act
      preferencesPageBloc
          .add(PreferencesPageEvent.saveUserPreferences(mockUserPreferences));
    });
  });
}
