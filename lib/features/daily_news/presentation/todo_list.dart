import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../domain/common_appbar.dart';

class ToDolistView extends GetView {
  const ToDolistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar("To Do List"),
      backgroundColor: Colors.red,
      body: Column(children: [
        Expanded(
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, index) {
                return  Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListTile(
                    tileColor: Colors.white,
                    title: const Text("Title"),
                    subtitle: const Text("Subtitle"),
                    trailing:  PopupMenuButton(
                      onSelected: (String value) {
                        if (value == "edit"){}
                        else{

                        }
                      } ,
                      itemBuilder: (BuildContext buildContext) => <PopupMenuEntry<String>>[
                          const PopupMenuItem(value:"edit", child: Text("Edit")),
                          const PopupMenuItem(value:"delete", child: Text("Delete")),
                      ]
                      ),
                  ),
                );
              }),
        ),
      ]),
    );
  }
}

