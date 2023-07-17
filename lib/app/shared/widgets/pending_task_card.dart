import 'package:flutter/material.dart';
import 'package:todo_lopes/app/models/todo_list_model.dart';
import 'package:todo_lopes/app/shared/themes/themes.dart';
import 'package:todo_lopes/app/shared/widgets/custom_text.dart';

class PendingTaskCard extends StatelessWidget {
  final TodoListModel todoList;
  const PendingTaskCard({super.key, required this.todoList});

  int pendingTasksTotal() {
    int pendingTasksTotal = 0;
    todoList.items.map((task) {
      if (task.isDone) {
        pendingTasksTotal = pendingTasksTotal + 1;
      }
    }).toList();
    return pendingTasksTotal;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 24, bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.access_time_filled_outlined,
                      color: todoList.color,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: CustomText(
                        todoList.title,
                        fontWeight: FontWeight.bold,
                        maxLines: 2,
                        minFontSize: 10,
                        color: lightCustomColors.sourceGreytextcolor,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 26,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(18),
            ),
            child: LinearProgressIndicator(
              color: todoList.color,
              minHeight: 8,
              value: pendingTasksTotal() / todoList.items.length,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomText(
                '${pendingTasksTotal()}/${todoList.items.length}',
                fontWeight: FontWeight.w500,
                color: lightCustomColors.sourceGreytextcolor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
