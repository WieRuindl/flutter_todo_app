import 'package:hive/hive.dart';

class ToDoDatabase {

  // todo list
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box('myBox');

  // run this if this is 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Task 1", false],
      ["Task 2", false],
      ["Task 3", true],
    ];
  }

  // load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }

}