import 'dart:convert';
import 'package:agenda/structure/scaffold.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:agenda/views/more/addElement.dart';

void main() => runApp(const Application());

String? userName;

class Application extends StatelessWidget {
  const Application({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda Application',
      home: const ScaffoldApp(title: 'Base App'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}