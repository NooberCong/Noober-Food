import 'package:flutter/material.dart';
import 'package:nooberfood/application/bloc/ingredient_page_bloc/ingredient_page_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IngredientItem extends StatefulWidget {
  const IngredientItem({
    Key key,
    @required this.ingredient,
  }) : super(key: key);

  final String ingredient;

  @override
  _IngredientItemState createState() => _IngredientItemState();
}

class _IngredientItemState extends State<IngredientItem>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _fadeAnimation;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Material(
          color: Colors.white,
          child: ListTile(
            contentPadding: const EdgeInsets.only(left: 20),
            title: Text(widget.ingredient),
            trailing: IconButton(
              splashColor: Colors.transparent,
              icon: Icon(
                Icons.remove,
                color: Colors.red,
              ),
              onPressed: () => _removeIngredient(context),
            ),
          ),
        ),
      ),
    );
  }

  void _removeIngredient(BuildContext context) {
    _controller.reverse().then((value) => context
        .bloc<IngredientPageBloc>()
        .add(IngredientPageEvent.removeIngredient(widget.ingredient)));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
