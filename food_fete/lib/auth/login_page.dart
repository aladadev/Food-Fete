import 'package:flutter/material.dart';

import 'package:food_fete/components/buttons.dart';
import 'package:food_fete/components/textfield.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback? registerFunc;

  const LoginPage({super.key, required this.registerFunc});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(
              height: 24,
            ),

            //slogan for the app
            Text(
              'Food Fete - Your Food Companion',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(
              height: 24,
            ),

            MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false),

            SizedBox(
              height: 8,
            ),

            MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true),

            SizedBox(
              height: 20,
            ),

            CustomButton(
              text: 'Login',
              onTap: () {},
            ),

            SizedBox(
              height: 20,
            ),

            //Not a Member? Navigate to Register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New User? ',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                GestureDetector(
                  onTap: widget.registerFunc,
                  child: Text(
                    'Register Here!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
