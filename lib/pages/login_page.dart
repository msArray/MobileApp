import "package:mobairu/components/my_button.dart";
import "package:mobairu/components/my_textfield.dart";
import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo
          Icon(
            Icons.mobile_friendly,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),

          const SizedBox(height: 20),

          // Welcome Back Message
          Text(
            "Mobairu",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          SizedBox(height: 20),

          // Email Input
          MyTextField(
            hintText: "メールアドレス",
          ),
          SizedBox(height: 20),
          // Password Input
          MyTextField(
            hintText: "パスワード",
          ),
          SizedBox(height: 20),
          // Login Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  child: MyButton(
                    text: "ログイン",
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: MyButton(
                    text: "新規登録",
                  ),
                ),
              ],
            ),
          )

          // Register Now
        ],
      ),
    );
  }
}
