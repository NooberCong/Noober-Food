import 'package:flutter/material.dart';
import 'package:nooberfood/dependencies_injection.dart';
import 'package:nooberfood/presentation/pages/discover_page.dart';
import 'package:nooberfood/presentation/pages/ingredients_page.dart';
import 'package:nooberfood/presentation/widgets/bottom_nav_bar.dart';
import 'package:nooberfood/route_generator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configure();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Noober Food',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        errorColor: Colors.grey[600],
        fontFamily: "OpenSans",
        accentColor: Colors.green,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: generateRoute,
      home: Scaffold(
          backgroundColor: const Color(0xffF4F4F4),
          body: IndexedStack(
            index: _tabIndex,
            children: const <Widget>[DiscoverPage(), IngredientsPage()],
          ),
          bottomNavigationBar: BottomNavBar(
            index: _tabIndex,
            onItemTap: _setTab,
          )),
    );
  }

  void _setTab(int index) {
    setState(() {
      _tabIndex = index;
    });
  }
}
