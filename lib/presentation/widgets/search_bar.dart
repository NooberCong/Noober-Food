import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:nooberfood/application/bloc/search_page_bloc/search_page_bloc.dart';
import 'package:nooberfood/dependencies_injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nooberfood/infrastructure/data_sources/remote_api/i_recipe_api.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "search_bar",
      child: Material(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: TypeAheadField(
            suggestionsBoxDecoration: SuggestionsBoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            hideOnEmpty: true,
            hideOnError: true,
            hideOnLoading: true,
            textFieldConfiguration: TextFieldConfiguration(
                onSubmitted: (value) => _searchRecipe(context, value as String),
                controller: _controller,
                autofocus: true,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.green),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.green,
                  ),
                  hintText: "What's on your mind?",
                  fillColor: Colors.grey[200],
                  labelText: "Search for recipes",
                  filled: true,
                  contentPadding: const EdgeInsets.all(10),
                  border: InputBorder.none,
                )),
            suggestionsCallback: (pattern) async {
              return getIt<IRecipeApi>().requestSuggestions(pattern);
            },
            itemBuilder: (context, suggestion) {
              final string = suggestion as String;
              return Column(
                children: <Widget>[
                  ListTile(
                    title: _buildTitle(string),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 0,
                    indent: 16,
                    endIndent: 16,
                  )
                ],
              );
            },
            onSuggestionSelected: (suggestion) =>
                _searchRecipe(context, suggestion as String),
          ),
        ),
      ),
    );
  }

  RichText _buildTitle(String string) {
    return RichText(
      text: TextSpan(
          text: string.substring(0, _controller.text.length),
          style: TextStyle(color: Colors.green, fontSize: 20),
          children: [
            TextSpan(
                text: string.substring(_controller.text.length),
                style: TextStyle(color: Colors.black87))
          ]),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _searchRecipe(BuildContext context, String value) {
    _controller.clear();
    context.bloc<SearchPageBloc>().add(SearchPageEvent.searchRecipes(value));
  }
}
