import 'package:flutter/material.dart';
import 'package:todo_lopes/app/shared/themes/themes.dart';
import 'package:todo_lopes/app/shared/widgets/custom_text.dart';

class DoneTaskCard extends StatelessWidget {
  final String title;
  const DoneTaskCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: lightCustomColors.sourceSecondarygreencolor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    color: lightCustomColors.sourceGreencolor,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  CustomText(
                    title,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.check_circle_rounded,
                    color: Colors.transparent,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CustomText(
                    'Lista concluída!',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
