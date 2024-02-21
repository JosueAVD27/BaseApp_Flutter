import 'package:agenda/structure/bottom_bar.dart';
import 'package:agenda/structure/top_bar.dart';
import 'package:flutter/material.dart';

class CrudApp extends StatefulWidget {
  const CrudApp({Key? key}) : super(key: key);

  @override
  CrudAppState createState() => CrudAppState();
}

class CrudAppState extends State<CrudApp> {

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
      appBar: const TopBarApp(title: "Profile"),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const Text('', textAlign: TextAlign.center),
        )
      ),
    );
  }
}