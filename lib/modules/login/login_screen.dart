import 'package:flutter/material.dart';
import 'package:udemycourse/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  var email = TextEditingController();

  var password = TextEditingController();

  var formkey = GlobalKey<FormState>();

  bool passwordVisiable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: defaultTextForm(
                      obscureText: false,
                        validateFunction: (value) {
                          if (value!.isEmpty) {
                            return ' email address must not be empty';
                          }
                          return null;
                        },
                        textInputType: TextInputType.emailAddress,
                        prefixIcon: Icons.email,
                        controller: email,
                        functionOnFieldSubmitted: (value) {
                          print(value);
                        },
                        functionOnChanged: (value) {
                          print(value);
                        },
                        labelText: ' Email ',
                        raduis: 10.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: defaultTextForm(
                        suffixFuncion: () {
                          setState(() {
                            passwordVisiable = !passwordVisiable;
                          });
                        },
                        validateFunction: (value) {
                          if (value!.isEmpty) {
                            return ' Password must not be empty';
                          }
                          return null;
                        },
                        obscureText: passwordVisiable,
                        prefixIcon: Icons.lock,
                        suffixIcon: passwordVisiable
                            ? Icons.visibility
                            : Icons.visibility_off,
                        textInputType: TextInputType.text,
                        controller: password,
                        functionOnFieldSubmitted: (value) {
                          print(value);
                        },
                        functionOnChanged: (value) {
                          print(value);
                        },
                        labelText: ' Password ',
                        raduis: 10.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: defaultButton(
                      Function: () {
                        if (formkey.currentState!.validate()) {
                          print(email);
                          print(password);
                        }
                      },
                      text: 'login',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don\'t have an account?",
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Register Now",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
