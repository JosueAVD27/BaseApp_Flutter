import 'package:flutter/material.dart';

class TopBarApp extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  const TopBarApp({Key? key, required this.title}) : super(key: key);

  @override
  AppBarState createState() => AppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AppBarState extends State<TopBarApp> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.purple.shade800,
      title: Text(
          widget.title,
        style: const TextStyle(color: Colors.white),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    );
  }
}