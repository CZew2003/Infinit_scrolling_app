import 'package:flutter/material.dart';

import '../actions/app_action.dart';
import '../actions/sign_in/sign_in.dart';
import '../util/extensions.dart';
import 'create_user_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String route = '/loginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void _onResult(AppAction action) {
    if (action is SignInSuccessful) {
      Navigator.pop(context);
    } else if (action is SignInError) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Center(child: Text('Account not found or incorrect password')),
          backgroundColor: Colors.lightBlue,
          duration: Duration(seconds: 2),
        ),
      );
      email.clear();
      password.clear();
    }
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('Login User'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.lightBlue, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: email,
                          decoration: const InputDecoration(
                            hintText: 'email',
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (String? value) {
                            if (value == null || value.isEmpty || !value.contains('@')) {
                              return 'Provide a valid email address.';
                            }

                            return null;
                          },
                        ),
                        TextFormField(
                          controller: password,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'password',
                          ),
                          validator: (String? value) {
                            if (value == null || value.length < 6) {
                              return 'Password less than 6 characters.';
                            }

                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.lightBlue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.dispatch(SignIn(email: email.text, password: password.text, result: _onResult));
                    }
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, CreateUserScreen.route);
                  },
                  child: const Text(
                    'Create user',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
