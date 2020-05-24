import 'package:flutter/material.dart';
import 'package:nooberfood/application/bloc/ingredient_page_bloc/ingredient_page_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IngredientInput extends StatefulWidget {
  final FocusNode focusNode;
  const IngredientInput({Key key, @required this.focusNode}) : super(key: key);

  @override
  _IngredientInputState createState() => _IngredientInputState();
}

class _IngredientInputState extends State<IngredientInput> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: TextFormField(
        controller: _controller,
        focusNode: widget.focusNode,
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
