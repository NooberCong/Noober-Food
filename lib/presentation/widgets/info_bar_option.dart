import 'package:flutter/material.dart';

class InfoBarOption extends StatelessWidget {
  final void Function() ontap;
  final String title;
  const InfoBarOption({
    Key key,
    @required this.title,
    @required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: (MediaQuery.of(context).size.width - 40) / 3,
        padding: const EdgeInsets.all(10),
        child: Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
