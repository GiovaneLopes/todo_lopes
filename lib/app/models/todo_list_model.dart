import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:todo_lopes/app/models/task_item_model.dart';
import 'package:todo_lopes/app/shared/themes/themes.dart';

class TodoListExtesion {
  static Color getColorFromInt(int value) {
    if (value == 0) return salmonColor;
    if (value == 1) return purpleColor;
    if (value == 2) return orangeColor;
    if (value == 3) return pinkColor;
    return salmonColor;
  }

  static int getIntFromColor(Color color) {
    if (color == salmonColor) return 0;
    if (color == purpleColor) return 1;
    if (color == orangeColor) return 2;
    if (color == pinkColor) return 3;
    return 0;
  }

  static bool isComplete(List<TaskItemModel> items) {
    for (int i = 0; i < items.length; i++) {
      if (!items[i].isDone) {
        return false;
      }
    }
    return true;
  }
}

class TodoListModel {
  String? id;
  String title;
  List<TaskItemModel> items;
  Color color;
  DateTime dateCreated;
  bool isComplete;
  TodoListModel({
    this.id,
    required this.title,
    required this.items,
    required this.color,
    required this.dateCreated,
    required this.isComplete,
  });

  TodoListModel copyWith({
    String? id,
    String? title,
    List<TaskItemModel>? items,
    Color? color,
    DateTime? dateCreated,
    bool? isComplete,
  }) {
    return TodoListModel(
      id: id ?? this.id,
      title: title ?? this.title,
      items: items ?? this.items,
      color: color ?? this.color,
      dateCreated: dateCreated ?? this.dateCreated,
      isComplete: isComplete ?? this.isComplete,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'items': items.map((x) => x.toMap()).toList(),
      'color': TodoListExtesion.getIntFromColor(color),
      'dateCreated': dateCreated.millisecondsSinceEpoch,
      'isComplete': TodoListExtesion.isComplete(items),
    };
  }

  factory TodoListModel.fromMap(Map<String, dynamic> map) {
    return TodoListModel(
      id: map['id'],
      title: map['title'] ?? '',
      items: List<TaskItemModel>.from(
          map['items']?.map((x) => TaskItemModel.fromMap(x))),
      color: TodoListExtesion.getColorFromInt(map['color']),
      dateCreated: DateTime.fromMillisecondsSinceEpoch(map['dateCreated']),
      isComplete: TodoListExtesion.isComplete(List<TaskItemModel>.from(
          map['items']?.map((x) => TaskItemModel.fromMap(x)))),
    );
  }

  factory TodoListModel.empty() {
    return TodoListModel(
      title: '',
      items: [],
      color: salmonColor,
      dateCreated: DateTime.now(),
      isComplete: false,
    );
  }

  String toJson() => json.encode(toMap());

  factory TodoListModel.fromJson(String source) =>
      TodoListModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TodoListModel(id: $id, title: $title, items: $items, color: $color, dateCreated: $dateCreated, isComplete: $isComplete)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TodoListModel &&
        other.id == id &&
        other.title == title &&
        listEquals(other.items, items) &&
        other.color == color &&
        other.dateCreated == dateCreated &&
        other.isComplete == isComplete;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        items.hashCode ^
        color.hashCode ^
        dateCreated.hashCode ^
        isComplete.hashCode;
  }
}
