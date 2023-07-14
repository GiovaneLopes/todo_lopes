import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:todo_lopes/app/models/todo_list_model.dart';

class TodoListController extends GetxController {
  TodoListController() {
    userId = FirebaseAuth.instance.currentUser!.uid;
    getUserTodoLists();
  }
  final todoListComplete = [].obs;
  final todoListPending = [].obs;
  final isLoading = false.obs;
  late String userId;

  Future<void> getUserTodoLists() async {
    try {
      isLoading.value = true;
      final userRef =
          FirebaseDatabase.instance.ref().child('users-todos').child(userId);
      DataSnapshot data = await userRef.get();
      todoListComplete.clear();
      todoListPending.clear();
      if (data.value != null) {
        final todoMap = data.value as Map<dynamic, dynamic>;
        todoMap.forEach(
          (key, value) {
            final list =
                TodoListModel.fromJson(value.toString()).copyWith(id: key);
            if (list.isComplete == true) {
              todoListComplete.add(list);
            } else {
              todoListPending.add(list);
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
