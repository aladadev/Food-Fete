import 'package:flutter/material.dart';
import 'package:food_fete/components/buttons.dart';
import 'package:food_fete/components/textfield.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

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
              Icons.app_registration_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 24,
            ),

            //Create an new account
            Text(
              'Create a new account!',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false),

            const SizedBox(
              height: 8,
            ),

            MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true),

            const SizedBox(
              height: 20,
            ),

            MyTextField(
                controller: confirmPasswordController,
                hintText: 'Confirm Password',
                obscureText: true),

            const SizedBox(
              height: 20,
            ),

            CustomButton(
              text: 'Register',
              onTap: () {},
            ),

            const SizedBox(
              height: 20,
            ),

            //Not a Member? Navigate to Register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already an user? ',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Login Here!',
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
