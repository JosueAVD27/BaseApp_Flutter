import 'package:flutter/material.dart';

class BottomBarApp extends StatefulWidget  {
  final Function currentIndex;
  const BottomBarApp({Key? key, required this.currentIndex}) : super(key: key);

  @override
  BottomBarAppState createState() => BottomBarAppState();
}

class BottomBarAppState extends State<BottomBarApp> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: index,
      onTap: (int i){
        setState(() {
          index = i;
          widget.currentIndex(i);
        });
      },
      selectedItemColor: Colors.purple.shade800,
      iconSize: 25.0,
      selectedIconTheme: const IconThemeData(size: 35.0),
      selectedFontSize: 10.0,
      unselectedFontSize: 12.0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.task),
          label: 'Tareas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.view_agenda_outlined),
          label: 'Agenda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.storage),
          label: 'Repositorio',
        ),
      ],
    );
  }
}