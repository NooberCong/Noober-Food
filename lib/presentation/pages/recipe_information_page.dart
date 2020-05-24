import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nooberfood/application/bloc/recipe_information_bloc/recipe_information_bloc.dart';
import 'package:nooberfood/dependencies_injection.dart';
import 'package:nooberfood/domain/data_structures/recipe_infomation.dart';
import 'package:nooberfood/presentation/widgets/info_bar_option.dart';
import 'package:nooberfood/presentation/widgets/recipe_ingredients.dart';
import 'package:nooberfood/presentation/widgets/recipe_instructions.dart';
import 'package:nooberfood/presentation/widgets/recipe_overview.dart';
import 'package:transparent_image/transparent_image.dart';

class RecipeInformationPage extends StatefulWidget {
  final dynamic idOrData;
  const RecipeInformationPage({Key key, @required this.idOrData})
      : super(key: key);

  @override
  _RecipeInformationPageState createState() => _RecipeInformationPageState();
}

class _RecipeInformationPageState extends State<RecipeInformationPage> {
  static const infoBarTitles = ["Description", "Ingredients", "Instructions"];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => getIt<RecipeInformationBloc>(),
        child: BlocBuilder<RecipeInformationBloc, RecipeInformationState>(
          builder: _buildBloc,
        ),
      ),
    );
  }

  Widget _buildBloc(BuildContext context, RecipeInformationState state) {
    return state.when(
      initial: () {
        context
            .bloc<RecipeInformationBloc>()
            .add(RecipeInformationEvent.processInputData(widget.idOrData));
        return const SizedBox();
      },
      loading: () => const Center(
        child: CircularProgressIndicator(
          strokeWidth: 1.5,
        ),
      ),
      loaded: (data) => _buildBody(data),
      error: (message) => Center(
        child: Text(
          message,
          style: TextStyle(color: Theme.of(context).errorColor),
        ),
      ),
    );
  }

  Widget _buildBody(RecipeInformation data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.width / 16 * 9,
              child: Hero(
                tag: data.imageUrl,
                child: FadeInImage.memoryNetwork(
                    fit: BoxFit.fill,
                    placeholder: kTransparentImage,
                    image: data.imageUrl),
              ),
            ),
            Positioned(
              top: 40,
              left: 20,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  data.title,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 20),
                Stack(
                  children: <Widget>[
                    Row(
                      children: List.generate(
                        3,
                        (index) => InfoBarOption(
                            title: infoBarTitles[index],
                            ontap: () => _ontap(index)),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 200),
                      bottom: 0,
                      left:
                          (MediaQuery.of(context).size.width - 40) / 3 * _index,
                      child: Container(
                          height: 1,
                          color: Colors.green,
                          width: (MediaQuery.of(context).size.width - 40) / 3),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: IndexedStack(
                    index: _index,
                    children: <Widget>[
                      RecipeOverview(data: data),
                      RecipeIngredients(data: data),
                      RecipeInstructions(data: data),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  void _ontap(int index) {
    setState(() {
      _index = index;
    });
  }
}
