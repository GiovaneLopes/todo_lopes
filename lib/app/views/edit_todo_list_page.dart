import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_lopes/app/controllers/todo_list_controller.dart';
import 'package:todo_lopes/app/models/task_item_model.dart';
import 'package:todo_lopes/app/models/todo_list_model.dart';
import 'package:todo_lopes/app/shared/themes/themes.dart';
import 'package:todo_lopes/app/shared/widgets/color_button.dart';
import 'package:todo_lopes/app/shared/widgets/custom_check_box.dart';
import 'package:todo_lopes/app/shared/widgets/custom_text.dart';
import 'package:todo_lopes/app/shared/widgets/custom_text_form_field.dart';

class EditTodoListPage extends StatefulWidget {
  final TodoListModel todoListModel;
  const EditTodoListPage({super.key, required this.todoListModel});

  @override
  State<EditTodoListPage> createState() => _EditTodoListPageState();
}

class _EditTodoListPageState extends State<EditTodoListPage> {
  final TodoListController todoListController = TodoListController();
  final TextEditingController todoListNameController = TextEditingController();
  final TextEditingController taskNameController = TextEditingController();
  final GlobalKey<FormState> todoListFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> taskItemFormKey = GlobalKey<FormState>();
  List<Color> colors = [salmonColor, purpleColor, orangeColor, pinkColor];

  @override
  void initState() {
    super.initState();
    final todoListName = widget.todoListModel.title;
    if (todoListName.isNotEmpty) {
      todoListNameController.text = todoListName;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          if (todoListFormKey.currentState!.validate()) {
            await todoListController.updateTodoList(widget.todoListModel);
            // ignore: use_build_context_synchronously
            Get.back();
          }
        },
        backgroundColor: widget.todoListModel.color,
        label: CustomText(
          'Salvar',
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 28, right: 28, top: 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                    Expanded(
                      child: CustomText(
                        widget.todoListModel.title,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        maxLines: 2,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        await todoListController
                            .removeTodoList(widget.todoListModel);
                        // ignore: use_build_context_synchronously
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.delete_outline_outlined,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomText(
                  'Nome',
                  fontSize: 18,
                ),
                const SizedBox(
                  height: 12,
                ),
                Form(
                  key: todoListFormKey,
                  child: CustomTextFormField(
                    controller: todoListNameController,
                    onChanged: (value) {
                      if (value != null) {
                        widget.todoListModel.title = value;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomText(
                  'Itens (${widget.todoListModel.items.length})',
                  fontSize: 18,
                ),
                if (widget.todoListModel.items.isNotEmpty)
                  Column(
                      children: widget.todoListModel.items
                          .map(
                            (task) => CustomCheckBox(
                              color: widget.todoListModel.color,
                              item: task,
                              onDelete: () {
                                setState(() {
                                  widget.todoListModel.items.remove(task);
                                });
                              },
                              onChanged: (value) {
                                if (value != null) {
                                  setState(
                                    () {
                                      task.isDone = value;
                                    },
                                  );
                                }
                              },
                            ),
                          )
                          .toList()),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22, vertical: 18),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 40,
                                          ),
                                          const CustomText(
                                            'Novo item',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                          IconButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            icon: const Icon(
                                              Icons.close,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      const CustomText(
                                        'Nome',
                                        fontSize: 18,
                                      ),
                                      Form(
                                        key: taskItemFormKey,
                                        child: CustomTextFormField(
                                          controller: taskNameController,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child:
                                                FloatingActionButton.extended(
                                              backgroundColor:
                                                  widget.todoListModel.color,
                                              onPressed: () {
                                                if (taskItemFormKey
                                                    .currentState!
                                                    .validate()) {
                                                  setState(() {
                                                    widget.todoListModel.items
                                                        .add(
                                                      TaskItemModel(
                                                        name: taskNameController
                                                            .text,
                                                        isDone: false,
                                                      ),
                                                    );
                                                  });
                                                  taskNameController.clear();
                                                  Navigator.pop(context);
                                                }
                                              },
                                              label: CustomText(
                                                'Salvar',
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add, color: widget.todoListModel.color),
                            CustomText(
                              'Novo Item',
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: widget.todoListModel.color,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const CustomText(
                  'Cor',
                  fontSize: 18,
                ),
                Row(
                  children: colors
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: ColorButton(
                            value: widget.todoListModel.color == e,
                            onPressed: (color) {
                              if (color != null) {
                                setState(() {
                                  widget.todoListModel.color = color;
                                });
                              }
                            },
                            color: e,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
