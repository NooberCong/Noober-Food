import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nooberfood/application/bloc/preferences_page_bloc/preferences_page_bloc.dart';
import 'package:nooberfood/dependencies_injection.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/user_preferences.dart';
import 'package:nooberfood/presentation/widgets/tag.dart';

class PreferencesPage extends StatefulWidget {
  const PreferencesPage({Key key}) : super(key: key);
  @override
  _PreferencesPageState createState() => _PreferencesPageState();
}

class _PreferencesPageState extends State<PreferencesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Search Preferences",
            style: TextStyle(color: Colors.black)),
      ),
      body: BlocProvider(
        create: (_) => getIt<PreferencesPageBloc>(),
        child: BlocBuilder<PreferencesPageBloc, PreferencesPageState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                context
                    .bloc<PreferencesPageBloc>()
                    .add(const PreferencesPageEvent.getUserPreferences());
                return const SizedBox.expand();
              },
              loaded: (data) => Column(
                children: <Widget>[
                  ListTile(
                    title: const Text("Diet",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18)),
                    trailing: DropdownButton(
                      items: diets
                          .map((entry) => DropdownMenuItem(
                                value: entry,
                                child: Text(entry),
                              ))
                          .toList(),
                      value: data.diet,
                      onChanged: (String value) {
                        final modifiedUserPrefs = _changeDiet(data, value);
                        _setUserPrefs(context, modifiedUserPrefs);
                      },
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      "Cuisines",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Wrap(
                      children: cuisines.map(
                        (entry) {
                          final value = data.cuisine.contains(entry);
                          return GestureDetector(
                            onTap: () {
                              final modifiedUserPrefs = value == true
                                  ? _removeCuisine(data, entry)
                                  : _addCuisine(data, entry);
                              _setUserPrefs(context, modifiedUserPrefs);
                              setState(() {});
                            },
                            child: Tag(
                              title: entry,
                              show: true,
                              value: value,
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                  const ListTile(
                    title: Text("Intolerances",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Wrap(
                      children: intolerances.map(
                        (entry) {
                          final value = data.intolerances.contains(entry);
                          return GestureDetector(
                            onTap: () {
                              final modifiedUserPrefs = value == true
                                  ? _removeIntolerance(data, entry)
                                  : _addIntolerance(data, entry);
                              _setUserPrefs(context, modifiedUserPrefs);
                              setState(() {});
                            },
                            child: Tag(
                              title: entry,
                              show: true,
                              value: value,
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
              error: (message) => Text(message),
            );
          },
        ),
      ),
    );
  }

  UserPreferences _changeDiet(UserPreferences data, String value) =>
      data.copyWith(diet: value);

  UserPreferences _addIntolerance(UserPreferences data, String entry) {
    return data.copyWith(intolerances: data.intolerances..add(entry));
  }

  UserPreferences _removeIntolerance(UserPreferences data, String entry) {
    return data.copyWith(intolerances: data.intolerances..remove(entry));
  }

  void _setUserPrefs(BuildContext context, UserPreferences userPreferences) {
    return context
        .bloc<PreferencesPageBloc>()
        .add(PreferencesPageEvent.saveUserPreferences(userPreferences));
  }

  UserPreferences _addCuisine(UserPreferences data, String entry) {
    return data.copyWith(cuisine: data.cuisine..add(entry));
  }

  UserPreferences _removeCuisine(UserPreferences data, String entry) {
    return data.copyWith(cuisine: data.cuisine..remove(entry));
  }
}
