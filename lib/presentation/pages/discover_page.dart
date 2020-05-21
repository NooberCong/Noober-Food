import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nooberfood/application/bloc/discover_page_bloc/discover_page_bloc.dart';
import 'package:nooberfood/dependencies_injection.dart';
import 'package:nooberfood/presentation/widgets/random_recipe_card.dart';

class DiscoverPage extends StatelessWidget {
  static const tags = [
    "Breakfast",
    "Lunch",
    "Dinner",
    "Desserts",
    "Drinks",
    "Fruits"
  ];
  const DiscoverPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
      child: BlocProvider(
        create: (_) => getIt<DiscoverPageBloc>(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => _ontap(context),
              child: Hero(
                tag: "search_bar",
                child: Material(
                  color: const Color(0xffF4F4F4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: TextFormField(
                      enabled: false,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search for recipes",
                          fillColor: Colors.grey[200],
                          filled: true,
                          contentPadding: const EdgeInsets.all(10),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const TagBar(),
            const SizedBox(height: 20),
            const Text(
              "Featured",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: BlocBuilder<DiscoverPageBloc, DiscoverPageBlocState>(
                builder: (context, state) {
                  return state.when(
                      initial: () {
                        context.bloc<DiscoverPageBloc>().add(
                            const DiscoverPageBlocEvent.getRandomRecipes(
                                ["breakfast"]));
                        return const SizedBox();
                      },
                      loadingRandomRecipes: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                      loadedRandomRecipes: (data) => ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                return RandomRecipeCard(data: data[index]);
                              },
                              itemCount: data.length,
                            ),
                          ),
                      error: (message) => Text("Error: $message"));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _ontap(BuildContext context) {
    Navigator.of(context).pushNamed("/search");
  }
}

class RandomRecipeTag extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String svgName;
  const RandomRecipeTag(
      {Key key,
      @required this.title,
      @required this.svgName,
      @required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SvgPicture.asset(
          "assets/images/$svgName.svg",
          height: 60,
          width: 60,
        ),
        Text(
          title,
          style: TextStyle(color: _colorFromSelection()),
        ),
      ],
    );
  }

  Color _colorFromSelection() {
    return isSelected ? Colors.green : Colors.grey;
  }
}

class TagBar extends StatefulWidget {
  const TagBar({Key key}) : super(key: key);

  @override
  _TagBarState createState() => _TagBarState();
}

class _TagBarState extends State<TagBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (_, index) => GestureDetector(
                onTap: () => _onTagTap(DiscoverPage.tags[index], index),
                child: RandomRecipeTag(
                    title: DiscoverPage.tags[index],
                    svgName: DiscoverPage.tags[index].toLowerCase(),
                    isSelected: index == _selectedIndex),
              ),
          separatorBuilder: (_, __) => const SizedBox(width: 20),
          itemCount: DiscoverPage.tags.length),
    );
  }

  void _onTagTap(String tag, int newIndex) {
    context
        .bloc<DiscoverPageBloc>()
        .add(DiscoverPageBlocEvent.getRandomRecipes([tag.toLowerCase()]));
    setState(() {
      _selectedIndex = newIndex;
    });
  }
}
