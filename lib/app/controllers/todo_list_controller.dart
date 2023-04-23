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
          FirebaseDatabase.instance.ref().child('users-todos').child(userId);
      DataSnapshot data = await userRef.get();
      todoListComplete.value.clear();
      todoListPending.value.clear();
      if (data.value != null) {
        final todoMap = data.value as Map<dynamic, dynamic>;
        todoMap.forEach(
          (key, value) {
            final list =
                TodoListModel.fromJson(value.toString()).copyWith(id: key);
            if (list.isComplete == true) {
              todoListComplete.value.add(list);
            } else {
              todoListPending.value.add(list);
            }
          },
        );
      }
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> addNewTodoList(TodoListModel todoListModel) async {
    try {
      isLoading.value = true;
      final userRef =
          FirebaseDatabase.instance.ref().child('users-todos').child(userId);
      await userRef.push().set(todoListModel.toJson());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> updateTodoList(TodoListModel todoListModel) async {
    try {
      isLoading.value = true;
      final userRef = FirebaseDatabase.instance
          .ref()
          .child('users-todos')
          .child(userId)
          .child(todoListModel.id!);
      await userRef.set(todoListModel.toJson());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> removeTodoList(TodoListModel todoListModel) async {
    try {
      isLoading.value = true;
      final userRef = FirebaseDatabase.instance
          .ref()
          .child('users-todos')
          .child(userId)
          .child(todoListModel.id!);
      await userRef.remove();
    } finally {
      isLoading.value = false;
    }
  }
}
