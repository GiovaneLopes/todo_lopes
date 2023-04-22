import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_lopes/app/models/todo_list_model.dart';

class TodoListController {
  TodoListController() {
    userId = FirebaseAuth.instance.currentUser!.uid;
    getUserTodoLists();
  }
  final ValueNotifier<List<TodoListModel>> todoListComplete =
      ValueNotifier<List<TodoListModel>>([]);
  final ValueNotifier<List<TodoListModel>> todoListPending =
      ValueNotifier<List<TodoListModel>>([]);
  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
  late String userId;

  Future<void> getUserTodoLists() async {
    try {
      isLoading.value = true;
      final userRef =
          FirebaseDatabase.instance.ref().child('Users').child(userId);
      DataSnapshot data = await userRef.get();
      if (data.value != null) {
        final todoMap = data.value as List;
        todoListComplete.value.clear();
        todoListPending.value.clear();
        for (var e in todoMap) {
          final list = TodoListModel.fromJson(e.toString());
          if (list.isComplete == true) {
            todoListComplete.value.add(list);
          } else {
            todoListPending.value.add(list);
          }
        }
      }
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> addNewTodoList(TodoListModel todoListModel) async {
    try {
      isLoading.value = true;
      final userRef =
          FirebaseDatabase.instance.ref().child('Users').child(userId);
      final totalList =
          todoListComplete.value + todoListPending.value + [todoListModel];
      await userRef.set(totalList.map((item) => item.toJson()).toList());
    } finally {
      await getUserTodoLists();
      isLoading.value = false;
    }
  }
}
