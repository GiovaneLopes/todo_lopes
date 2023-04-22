import 'package:flutter/material.dart';
import 'package:todo_lopes/app/controllers/todo_list_controller.dart';
import 'package:todo_lopes/app/models/task_item_model.dart';
import 'package:todo_lopes/app/models/todo_list_model.dart';
import 'package:todo_lopes/app/shared/themes/themes.dart';
import 'package:todo_lopes/app/shared/widgets/color_button.dart';
import 'package:todo_lopes/app/shared/widgets/custom_check_box.dart';
import 'package:todo_lopes/app/shared/widgets/custom_text.dart';
import 'package:todo_lopes/app/shared/widgets/custom_text_form_field.dart';

class NewTodoListPage extends StatefulWidget {
  const NewTodoListPage({super.key});

  @override
  State<NewTodoListPage> createState() => _NewTodoListPageState();
}

class _NewTodoListPageState extends State<NewTodoListPage> {
  final TodoListController todoListController = TodoListController();
  TodoListModel newTodoList = TodoListModel.empty();
  final TextEditingController todoListNameController = TextEditingController();
  final TextEditingController taskNameController = TextEditingController();
  final GlobalKey<FormState> todoListFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> taskItemFormKey = GlobalKey<FormState>();
  List<TaskItemModel> itens = [];
  Color selectedColor = salmonColor;
  List<Color> colors = [salmonColor, purpleColor, orangeColor, pinkColor];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          if (todoListFormKey.currentState!.validate()) {
            await todoListController.addNewTodoList(
              TodoListModel(
                title: todoListNameController.text,
                items: itens,
                color: selectedColor,
                dateCreated: DateTime.now(),
                isComplete: false,
              ),
            );
            // ignore: use_build_context_synchronously
            Navigator.pop(context);
          }
        },
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
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                    const CustomText(
                      'Nova Lista',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    const Icon(
                      Icons.arrow_back,
                      color: Colors.transparent,
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
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomText(
                  'Itens (${itens.length})',
                  fontSize: 18,
                ),
                if (itens.isNotEmpty)
                  Column(
                      children: itens
                          .map(
                            (task) => CustomCheckBox(
                              color: primaryBlue,
                              item: task,
                              onDelete: () {
                                setState(() {
                                  itens.remove(task);
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
                                              onPressed: () {
                                                if (taskItemFormKey
                                                    .currentState!
                                                    .validate()) {
                                                  setState(() {
                                                    itens.add(
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
                          children: const [
                            Icon(Icons.add),
                            CustomText(
                              'Novo Item',
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
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
                            value: selectedColor == e,
                            onPressed: (color) {
                              if (color != null) {
                                setState(() {
                                  selectedColor = color;
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
