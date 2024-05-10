import 'package:flutter/material.dart';

class ToDolistView extends StatelessWidget {
  const ToDolistView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("TO DO LIST"),
      ),
    );
  }
}