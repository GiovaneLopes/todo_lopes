import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_lopes/app/controllers/auth_controller.dart';

import 'package:todo_lopes/app/shared/resources/images.dart';
import 'package:todo_lopes/app/shared/themes/themes.dart';
import 'package:todo_lopes/app/shared/widgets/custom_floating_action_button.dart';
import 'package:todo_lopes/app/shared/widgets/custom_text.dart';
import 'package:todo_lopes/app/shared/widgets/sign_in_social_button.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFloatingActionButton(
              elevation: 0,
              child: Icon(
                Icons.list,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const CustomText(
              'Bem-vindo(a) ao',
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
            const CustomText(
              'To-do Lopes',
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 28,
            ),
            CustomText(
              'To-do Lopes te ajuda a organizar e realizar suas tarefas mais rápido',
              fontSize: 18,
              minFontSize: 14,
              maxLines: 2,
              color: lightCustomColors.sourceGreytextcolor,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 28,
            ),
            SignInSocialButton(
              image: Images.gmailIcon,
              label: 'Faça login com o Gmail',
              onPressed: () async {
                await authController.signInWithGoogle();
              },
            ),
            // const SizedBox(
            //   height: 28,
            // ),
            // SignInSocialButton(
            //   image: Images.facebookIcon,
            //   label: 'Faça login com o Facebook',
            //   onPressed: () async {
            //     await authController.signInWithFacebook();
            //   },
            // ),
            const SizedBox(
              height: 28,
            ),
            Obx(() {
              if (authController.isLoading.value == true) {
                return const CircularProgressIndicator(
                  color: primaryBlue,
                );
              }
              return Container();
            }),
          ],
        ),
      ),
    );
  }
}
