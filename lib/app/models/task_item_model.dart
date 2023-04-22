import 'dart:convert';

class TaskItemModel {
  String name;
  bool isDone;
  TaskItemModel({
    required this.name,
    required this.isDone,
  });

  TaskItemModel copyWith({
    String? name,
    bool? isDone,
  }) {
    return TaskItemModel(
      name: name ?? this.name,
      isDone: isDone ?? this.isDone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'isDone': isDone,
    };
  }

  factory TaskItemModel.fromMap(Map<String, dynamic> map) {
    return TaskItemModel(
      name: map['name'] ?? '',
      isDone: map['isDone'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskItemModel.fromJson(String source) => TaskItemModel.fromMap(json.decode(source));

  @override
  String toString() => 'TaskItemModel(name: $name, isDone: $isDone)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is TaskItemModel &&
      other.name == name &&
      other.isDone == isDone;
  }

  @override
  int get hashCode => name.hashCode ^ isDone.hashCode;
}
