import 'package:flutter/material.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:todo_app/Models/todo.dart';
import 'package:todo_app/Pages/todo_detail.dart';
import 'package:todo_app/Utils/database_helper.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Todo> todoList;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    if (todoList == null) {
      todoList = List<Todo>();
      updateListView();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('FOCO PORRA'),
      ),
      body: getTodosListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Clicl');
          navigateToDetail(Todo('', '', ''), 'Adicionar ');
        },
        tooltip: '+ 1 A fazer',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getTodosListView() {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(getAvatar(this.todoList[position].title),
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            title: Text(this.todoList[position].title,
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(this.todoList[position].desc),
            trailing: Row(
              children: [
                GestureDetector(
                    child: Icon(
                      Icons.delete,
                      color: Colors.redAccent,
                    ),
                    onTap: () {
                      _delete(context, todoList[position]);
                    })
              ],
            ),
            onTap: () {
              print("Lista detalhes");
              //faça o navigate
            },
          ),
        );
      },
    );
  }

  getAvatar(String title) {
    return title.substring(0, 2);
  }

  void _delete(BuildContext context, Todo todo) async {
    int result = await databaseHelper.deleteTodo(todo.id);
    if (result != 0) {
      _showSnackBar(context, 'Todo Deleted Successfully');
      updateListView();
    }
  }

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  void updateListView() {
    final Future<Database> dbFuture = databaseHelper.initializeDatabase();
    dbFuture.then((database) {
      Future<List<Todo>> todoListFuture = databaseHelper.getTodoList();
      todoListFuture.then((todoList) {
        setState(() {
          this.todoList = todoList;
          this.count = todoList.length;
        });
      });
    });
  }

  void navigateToDetail(Todo todo, String title) async {
    bool result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return TodoDetail(todo, title);
      debugPrint("Chamou a segunda tela");

      //return TodoDetail(todo, title);
    }));

    if (result == true) {
      updateListView();
    }
  }
}
