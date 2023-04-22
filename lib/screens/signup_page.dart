import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tasky/screens/login_page.dart';
import 'package:tasky/screens/task_page.dart';
import 'package:tasky/widget/big_text.dart';
import 'package:tasky/widget/bottom_row.dart';
import 'package:tasky/widget/button_widget.dart';
import 'package:tasky/widget/small_text.dart';
import 'package:tasky/widget/stack_circle_widget.dart';
import '../widget/rounded_text_field.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print("Height :${height}");
    print("width :${width}");
    return Scaffold(
      backgroundColor: const Color(0xffE6E6E6),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Hero(tag: 'hero', child: StackCircleWidget()),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 20),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      //show the Header Text
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: Center(
                          child: Column(
                            children: const [
                              BigText(text: 'Welcome onboard'),
                              SizedBox(height: 10),
                              SmallText(text: 'Lets Help You Meet Your Tasks')
                            ],
                          ),
                        ),
                      ),
                      RoundedTextField(
                          text: 'Enter your name', controller: username),
                      RoundedTextField(
                        text: 'Enter your Email',
                        textInputType: TextInputType.emailAddress,
                        controller: email,
                      ),
                      RoundedTextField(
                        text: 'Enter your Password',
                        obscureText: true,
                        controller: password,
                      ),
                      const RoundedTextField(
                          text: 'Confirm Password', obscureText: true),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      ButtonWidget(
                        text: 'Register',
                        onTap: () async {
                          try {
                            final newUser =
                                await auth.createUserWithEmailAndPassword(
                                    email: email.text, password: password.text);
                            if (context.mounted) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TaskPage(
                                            username: username.text,
                                          )));
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                      BottomRow(
                        text: 'Already Have Account?   ',
                        textButton: 'Sign In',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
