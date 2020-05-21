import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nooberfood/application/bloc/search_page_bloc/search_page_bloc.dart';
import 'package:nooberfood/dependencies_injection.dart';
import 'package:nooberfood/domain/data_structures/recipe_preview.dart';
import 'package:nooberfood/presentation/widgets/recipe_preview_card.dart';
import 'package:nooberfood/presentation/widgets/search_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "Search",
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: FaIcon(FontAwesomeIcons.slidersH),
              onPressed: () => _navigateToPreferenceSettings(context),
            ),
            const SizedBox(width: 20),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          child: BlocProvider(
            create: (_) => getIt<SearchPageBloc>(),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20),
                const SearchBar(),
                const SizedBox(height: 20),
                Expanded(
                  child: BlocBuilder<SearchPageBloc, SearchPageState>(
                    builder: _buildBloc,
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void _navigateToPreferenceSettings(BuildContext context) {
    Navigator.of(context).pushNamed("/preferences");
  }

  Widget _buildBloc(BuildContext context, SearchPageState state) {
    return state.when(
      initial: () => const SizedBox(),
      loading: () => const Center(
          child: CircularProgressIndicator(
        strokeWidth: 1.5,
      )),
      loaded: (data) => ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final RecipePreview recipePreview = data[index];
          return RecipePreviewCard(recipePreview: recipePreview);
        },
        itemCount: data.length,
      ),
      error: (message) => Center(
          child: Text(message,
              style: TextStyle(color: Theme.of(context).errorColor))),
    );
  }
}
