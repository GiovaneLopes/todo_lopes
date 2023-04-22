import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_lopes/app/controllers/todo_list_controller.dart';
import 'package:todo_lopes/app/shared/resources/images.dart';
import 'package:todo_lopes/app/shared/themes/themes.dart';
import 'package:todo_lopes/app/shared/widgets/custom_floating_action_button.dart';
import 'package:todo_lopes/app/shared/widgets/custom_text.dart';
import 'package:todo_lopes/app/shared/widgets/done_task_card.dart';
import 'package:todo_lopes/app/shared/widgets/pending_task_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final TodoListController todoListController = TodoListController();
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
       
        },
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: AnimatedBuilder(
            animation: Listenable.merge(
              [
                todoListController.todoListComplete,
                todoListController.todoListPending,
                todoListController.isLoading
              ],
            ),
            builder: (_, __) {
              if (todoListController.isLoading.value == true) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: primaryBlue,
                ));
              }
              return Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                  left: 28,
                  right: 28,
                  top: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomText(
                      'Todo Lopes',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    if (todoListController.todoListComplete.value.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 22),
                        child: DoneTaskCard(
                          title: todoListController
                              .todoListPending.value.last.title,
                          timeConclued: todoListController
                              .todoListPending.value.last.dateCreated,
                        ),
                      ),
                    const TabBar(
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                      indicatorColor: Colors.transparent,
                      dividerColor: Colors.transparent,
                      tabs: [
                        Tab(
                            child: CustomText(
                          'Pendentes',
                          fontSize: 18,
                        )),
                        Tab(
                            child: CustomText(
                          'Concluídas',
                          fontSize: 18,
                        )),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          (todoListController.todoListPending.value.isNotEmpty)
                              ? ListView.builder(
                                  itemCount: todoListController
                                      .todoListPending.value.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ListTile(
                                      title: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 22),
                                        child: PendingTaskCard(
                                          todoList: todoListController
                                              .todoListPending.value[index],
                                        ),
                                      ),
                                    );
                                  },
                                )
                              : Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        Images.noDataIllustration,
                                        width: 150,
                                      ),
                                      const SizedBox(
                                        height: 22,
                                      ),
                                      const CustomText(
                                        'Nenhuma lista por enquanto.',
                                        fontSize: 18,
                                      )
                                    ],
                                  ),
                                ),
                          (todoListController.todoListComplete.value.isNotEmpty)
                              ? ListView.builder(
                                  itemCount: todoListController
                                      .todoListComplete.value.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ListTile(
                                      title: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 22),
                                        child: DoneTaskCard(
                                          title: todoListController
                                              .todoListPending
                                              .value[index]
                                              .title,
                                          timeConclued: todoListController
                                              .todoListPending
                                              .value[index]
                                              .dateCreated,
                                        ),
                                      ),
                                    );
                                  },
                                )
                              : Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        Images.noDataIllustration,
                                        width: 150,
                                      ),
                                      const SizedBox(
                                        height: 22,
                                      ),
                                      const CustomText(
                                        'Nenhuma lista por enquanto.',
                                        fontSize: 18,
                                      )
                                    ],
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}