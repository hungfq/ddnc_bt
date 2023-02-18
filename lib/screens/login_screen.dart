import 'package:flutter/material.dart';
import 'package:tuan2/components/sign_in_button.dart';
import 'package:tuan2/components/my_textfield.dart';
import 'package:tuan2/components/square_title.dart';
import 'package:tuan2/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign in method
  void signIn(context) {
    print(usernameController);
    print(usernameController.text);
    String userName = usernameController.text;
    String password = passwordController.text;
    // if (userName == 'admin' && password == '123') {
      print('logged');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(height: 40),
            // logo
            const Icon(Icons.lock_outline, size: 80, color: Colors.white),
            const SizedBox(height: 25),
            // Wellcome back, you've been missed!
            Text('Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[100],
                  fontSize: 16,
                )),
            const SizedBox(height: 20),
            // user text field
            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),
            const SizedBox(height: 20),
            // password text field
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 20),
            // forgot got password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password',
                      style: TextStyle(color: Colors.grey[300])),
                ],
              ),
            ),
            const SizedBox(height: 25),
            // Sign in button text
            SignInButton(
              onTap: () {
                signIn(context);
              }
            ),
            const SizedBox(height: 10),
            // or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(color: Colors.grey[400], thickness: 0.5)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ),
                  Expanded(
                      child: Divider(color: Colors.grey[400], thickness: 0.5))
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Gooogle and apple sign in button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SquareTitle(imagePath: 'lib/images/dog.jpg'),
                SizedBox(width: 10),
                SquareTitle(imagePath: 'lib/images/dog.jpg'),
              ],
            ),
            const SizedBox(height: 10),
            // not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Not a remember? ',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(width: 10),
                Text(
                  'Register now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ]),
        )));
  }
}
