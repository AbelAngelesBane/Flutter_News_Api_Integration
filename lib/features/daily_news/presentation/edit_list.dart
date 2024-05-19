import 'package:flutter/material.dart';

class EditlistView extends StatelessWidget {
  const EditlistView({super.key});

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