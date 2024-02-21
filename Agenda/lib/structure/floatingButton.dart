import 'package:agenda/views/more/addElement.dart';
import 'package:flutter/material.dart';

class FloatingButtonApp extends StatefulWidget {
  const FloatingButtonApp({super.key});
  @override
  FloatingButtonAppState createState() => FloatingButtonAppState();
}

class FloatingButtonAppState extends State<FloatingButtonApp> {

  @override
  Widget build(BuildContext context){
    return FloatingActionButton(
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddElement()),
        );
      },
      tooltip: '',
      child: const Icon(Icons.add),
    );
  }
}