import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String title;
  final bool show;
  final bool value;

  const Tag(
      {Key key, @required this.show, @required this.title, this.value = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (show) {
      return Container(
        margin: const EdgeInsets.only(right: 10, top: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: _containerColorFromValue(),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: _textColorFromValue(),
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  Color _containerColorFromValue() => value ? Colors.green : Colors.grey[200];

  Color _textColorFromValue() => value ? Colors.white : Colors.green;
}
