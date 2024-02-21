import 'package:flutter/material.dart';

class Repositories extends StatelessWidget {
  const Repositories({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: const Text(
          'Repositoro',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}