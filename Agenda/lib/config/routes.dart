import 'package:agenda/views/bottomBar/repositories.dart';
import 'package:agenda/views/bottomBar/agenda.dart';
import 'package:flutter/material.dart';
import 'package:agenda/views/bottomBar/home.dart';
import 'package:agenda/views/bottomBar/task.dart';
import 'package:agenda/views/bottomBar/chat.dart';

class Routes extends StatelessWidget {
  final int indexBottomBar;

  const Routes({Key? key, required this.indexBottomBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      List<Widget> listBottomBar = [
        const Home(),
        const Task(),
        const ChatApp(),
        const Agenda(),
        const Repositories()
      ];

      return listBottomBar[indexBottomBar];

  }
}

