import 'package:flutter/material.dart';

class CreatelistView extends StatelessWidget {
  const CreatelistView({super.key});

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