// ignore_for_file: prefer_const_constructors

import 'package:afnus_diary/colors.dart';
import 'package:afnus_diary/models/todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../views/home.dart';

class TodoItems extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const TodoItems(
      {super.key,
      required this.todo,
      required this.onToDoChanged,
      required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {
            onToDoChanged(todo);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          leading: Icon(
              todo.isDone ? Icons.check_box : Icons.check_box_outline_blank),
          title: Text(
            todo.text,
            style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: todo.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: tdRed, borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              onPressed: () {
                onDeleteItem(todo.id);
              },
              color: Colors.white,
              iconSize: 18,
              icon: Icon(Icons.delete),
            ),
          ),
        ));
  }
}
