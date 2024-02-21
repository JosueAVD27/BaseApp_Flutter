import 'package:flutter/material.dart';
import 'package:agenda/structure/top_bar.dart';
import 'package:agenda/structure/drawer.dart';
import 'package:agenda/structure/floatingButton.dart';
import 'package:agenda/structure/bottom_bar.dart';
import 'package:agenda/config/routes.dart';

class ScaffoldApp extends StatefulWidget {
  final String title;
  const ScaffoldApp({super.key, required this.title});
  @override
  ScaffoldAppState createState() => ScaffoldAppState();
}

class ScaffoldAppState extends State<ScaffoldApp> {
  int index  = 0;
  BottomBarApp ?myBNBar;

  @override
  void initState() {
    myBNBar = BottomBarApp(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBarApp(title: widget.title),
      drawer: const DrawerApp(),
      floatingActionButton: const FloatingButtonApp(),
      bottomNavigationBar: myBNBar,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Routes(indexBottomBar: index);
  }

}