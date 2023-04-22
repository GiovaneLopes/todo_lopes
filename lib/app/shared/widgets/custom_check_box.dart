import 'package:flutter/material.dart';
import 'package:todo_lopes/app/shared/themes/themes.dart';
import 'package:todo_lopes/app/shared/widgets/custom_text.dart';
import 'package:todo_lopes/app/views/auth_page.dart';

class CustomCheckBox extends StatelessWidget {
  final TaskItem item;
  final Color? color;
  final Function(bool?) onChanged;
  final Function()? onDelete;
  const CustomCheckBox({
    super.key,
    required this.item,
    required this.onChanged,
    this.color = salmonColor,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => onChanged(!item.isDone),
          child: Stack(
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: item.isDone == true ? color : Colors.transparent,
                  border: Border.all(color: color!, width: 3),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              item.isDone == true
                  ? Icon(
                      Icons.check,
                      color: Theme.of(context).colorScheme.onPrimary,
                    )
                  : Container(),
            ],
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: CustomText(
            item.name,
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: item.isDone == true ? color : null,
            textDecoration:
                item.isDone == true ? TextDecoration.lineThrough : null,
          ),
        ),
        IconButton(
          onPressed: onDelete,
          icon: Icon(
            Icons.close,
            color: color,
            size: 24,
          ),
        ),
      ],
    );
  }
}
