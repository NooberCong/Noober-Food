import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nooberfood/application/bloc/ingredient_page_bloc/ingredient_page_bloc.dart';
import 'package:nooberfood/dependencies_injection.dart';
import 'package:nooberfood/presentation/widgets/ingredient_input.dart';
import 'package:nooberfood/presentation/widgets/ingredient_item.dart';

class IngredientsPage extends StatelessWidget {
  const IngredientsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox.expand(
          child: BlocProvider(
            create: (_) => getIt<IngredientPageBloc>(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Keep track of your ingredients",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20),
                const IngredientInput(),
                const SizedBox(height: 20),
                Expanded(
                  child: BlocBuilder<IngredientPageBloc, IngredientPageState>(
                    builder: (context, state) {
                      return state.when(initial: () {
                        _loadUserIngredients(context);
                        return const SizedBox();
                      }, ingredientsRetrieved: (data) {
                        return ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return IngredientItem(
                                ingredient: data[index],
                                key: ValueKey(data[index]),
                              );
                            },
                            itemCount: data.length);
                      }, error: (message) {
                        return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                message,
                                style: TextStyle(
                                  color: Theme.of(context).errorColor,
                                ),
                              ),
                              FlatButton(
                                onPressed: () => _loadUserIngredients(context),
                                child: const Text("Back",
                                    style: TextStyle(
                                        color: Colors.pink, fontSize: 18)),
                              )
                            ]);
                      });
                    },
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: FlatButton(
                    padding: const EdgeInsets.all(15),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/recipesuggestions");
                    },
                    child: Text(
                      "Get recipe suggestions",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _loadUserIngredients(BuildContext context) {
    context
        .bloc<IngredientPageBloc>()
        .add(IngredientPageEvent.retrieveUserIngredients());
  }
}
