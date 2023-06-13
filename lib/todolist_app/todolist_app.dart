import 'package:flutter/material.dart';
import 'package:flutter_classb/todolist_app/database_helper.dart';
import 'package:flutter_classb/utills/drawer_util.dart';

class TodoListApp extends StatefulWidget {
  const TodoListApp({super.key});

  @override
  State<TodoListApp> createState() => _TodoListAppState();
}

class _TodoListAppState extends State<TodoListApp> {
  String todoEdited = "";
  final dbHelper = DatabaseHelper.instance;
  final todoController = TextEditingController();
  bool validated = true;
  String errorMessage = "";
  var myTodos = [];
  List<Widget> children = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TodoList App"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
        elevation: 5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
      ),
      drawer: const Drawe(),
      floatingActionButton: FloatingActionButton(
        onPressed: showAlertDialog,
        child: const Icon(Icons.add),
      ),
      body: FutureBuilder(
        builder: (context, snap) {
          if (snap.hasData == null) {
            return const Center(
              child: Text("No Data"),
            );
          } else {
            if (myTodos.length == 0) {
              return const Center(
                child: Text("No Tasks Available"),
              );
            } else {
              return Column(
                children: children,
              );
            }
          }
        },
        future: querryAllTodosInTable(),
      ),
    );
  }

  void insertTodo() async {
    Map<String, dynamic> todo = {
      DatabaseHelper.columnName: todoEdited,
    };

    final id = await dbHelper.insert(todo);
    print(id);
    Navigator.of(context, rootNavigator: true).pop();
  }

  void showAlertDialog() {
    todoController.text = "";

    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              title: Text("Add Todo"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              content: SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  children: [
                    TextField(
                      controller: todoController,
                      autofocus: true,
                      onChanged: (value) {
                        todoEdited = value;
                      },
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        errorText: validated ? null : errorMessage,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    MaterialButton(
                      onPressed: () {
                        if (todoController.text.isEmpty) {
                          setState(() {
                            errorMessage = "Cannot be Empty";
                            validated = false;
                          });
                        } else if (todoController.text.length > 500) {
                          setState(() {
                            errorMessage = "Too Many Characters";
                            validated = false;
                          });
                        } else {
                          insertTodo();
                        }
                      },
                      color: Colors.deepPurple[100],
                      child: const Text(
                        "Add",
                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
        });
  }

  Future<bool> querryAllTodosInTable() async {
    myTodos = [];
    children = [];
    var allTodos = await dbHelper.querryAllTodos();

    allTodos?.forEach((todo) {
      myTodos.add(todo.toString());
      var item = Card(
        elevation: 5.0,
        margin: const EdgeInsets.all(15),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            title: Text(
              todo['todo'],
              style: const TextStyle(fontSize: 18.0),
            ),
            onLongPress: () {
              setState(() {
                dbHelper.delete(todo["id"]);
              });
            },
          ),
        ),
      );

      children.add(item);
    });

    return Future.value(true);
  }
}
