import 'package:flutter/material.dart';
import 'package:food_fete/auth/login_page.dart';
import 'package:food_fete/auth/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // default first login page
  bool showLoginPage = true;

  //toggling login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}
