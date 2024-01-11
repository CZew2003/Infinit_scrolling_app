import 'package:flutter/material.dart';

import '../actions/create_user/create_user.dart';
import '../util/extensions.dart';

class CreateUserScreen extends StatefulWidget {
  const CreateUserScreen({super.key});
  static const String route = '/createUserScreen';

  @override
  State<CreateUserScreen> createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Create an creator',
                  style: TextStyle(color: Colors.lightBlue, fontSize: 32),
                ),
                const SizedBox(
                  height: 50,
                ),
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
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.dispatch(CreateUser(email: email.text, password: password.text));
                    }
                  },
                  child: const Text('Create creator'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
