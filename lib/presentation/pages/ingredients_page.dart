import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nooberfood/application/bloc/ingredient_page_bloc/ingredient_page_bloc.dart';
import 'package:nooberfood/dependencies_injection.dart';

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
                const AddButton(),
                const SizedBox(height: 20),
                Expanded(
                  child: BlocBuilder<IngredientPageBloc, IngredientPageState>(
                    builder: (context, state) {
                      return state.when(initial: () {
                        context
                            .bloc<IngredientPageBloc>()
                            .add(IngredientPageEvent.retrieveUserIngredients());
                        return const SizedBox();
                      }, ingredientsRetrieved: (data) {
                        return ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Material(
                                  color: Colors.white,
                                  child: ListTile(
                                    contentPadding:
                                        const EdgeInsets.only(left: 20),
                                    title: Text(data[index]),
                                    trailing: IconButton(
                                      splashColor: Colors.transparent,
                                      icon: Icon(
                                        Icons.remove,
                                        color: Colors.red,
                                      ),
                                      onPressed: () {
                                        context.bloc<IngredientPageBloc>().add(
                                            IngredientPageEvent
                                                .removeIngredient(data[index]));
                                      },
                                    ),
                                  ),
                                ),
                              );
                            },
                            itemCount: data.length);
                      }, error: (message) {
                        return Center(
                          child: Text(message),
                        );
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
}

class AddButton extends StatefulWidget {
  const AddButton({
    Key key,
  }) : super(key: key);

  @override
  _AddButtonState createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: TextFormField(
        controller: _controller,
        onFieldSubmitted: (_) => _onSubmit(context),
        decoration: InputDecoration(
          fillColor: Colors.grey[300],
          filled: true,
          hintText: "What do your have?",
          border: InputBorder.none,
          suffixIcon: Container(
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.green,
              ),
              onPressed: () => _onSubmit(context),
            ),
          ),
        ),
      ),
    );
  }

  void _onSubmit(BuildContext context) {
    if (_controller.text.isNotEmpty) {
      context
          .bloc<IngredientPageBloc>()
          .add(IngredientPageEvent.addIngredient(_controller.text));
      _controller.clear();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
