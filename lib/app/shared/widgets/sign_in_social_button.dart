import 'package:flutter/material.dart';
import 'package:todo_lopes/app/shared/widgets/custom_text.dart';

class SignInSocialButton extends StatelessWidget {
  final String image;
  final String label;
  final Function() onPressed;
  const SignInSocialButton(
      {super.key,
      required this.image,
      required this.label,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              offset: const Offset(1, 1),
              blurRadius: 1,
              spreadRadius: 1,
              color: Colors.black.withOpacity(.15),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 40,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: CustomText(
                label,
                fontSize: 16,
                minFontSize: 14,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
