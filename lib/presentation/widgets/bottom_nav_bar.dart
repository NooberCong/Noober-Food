import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int) onItemTap;
  final int index;
  const BottomNavBar({Key key, @required this.onItemTap, @required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onItemTap,
      selectedItemColor: Colors.pink,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
      elevation: 5,
      items: const [
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.compass), title: Text("Discover")),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.shoppingCart),
          title: Text("Ingredients"),
        )
      ],
    );
  }
}
