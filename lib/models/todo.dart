import 'package:afnus_diary/widgets/todo_item.dart';

class ToDo {
  String id;
  String text;
  bool isDone;

  ToDo({required this.id, required this.text, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '1', text: "Morning's here, Shine dear", isDone: true),
      ToDo(id: '2', text: "Groceries", isDone: true),
      ToDo(
        id: '3',
        text: "Call Mom",
      ),
      ToDo(
        id: '4',
        text: "Buy eggs",
      ),
      ToDo(
        id: '5',
        text: "Taking pills at 5 PM",
      ),
      ToDo(
        id: '6',
        text: "Something is missing",
      )
    ];
  }
}
