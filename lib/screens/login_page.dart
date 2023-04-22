import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tasky/app_color.dart';
import 'package:tasky/screens/task_page.dart';
import 'package:tasky/widget/button_widget.dart';
import '../widget/big_text.dart';
import '../widget/bottom_row.dart';
import '../widget/rounded_text_field.dart';
import '../widget/small_text.dart';
import '../widget/stack_circle_widget.dart';
import 'signup_page.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  final auth = FirebaseAuth.instance;
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                            children: [
                              const BigText(text: 'Welcome Back'),
                              const SizedBox(height: 50),
                              Image.asset(
                                'assets/image/img2.png',
                              ),
                            ],
                          ),
                        ),
                      ),
                      RoundedTextField(
                          controller: email,
                          text: 'Enter your name',
                          textInputType: TextInputType.emailAddress),
                      RoundedTextField(
                          controller: password, text: 'Enter your Password'),
                      const SizedBox(height: 20),
                      const SmallText(
                        text: 'Forget Password',
                        color: AppColor.buttonAppColor,
                      ),
                      const SizedBox(height: 20),
                      ButtonWidget(
                        text: 'Login',
                        onTap: () async {
                          try {
                            await auth.signInWithEmailAndPassword(
                                email: email.text, password: password.text);
                            if (context.mounted) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TaskPage()));
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                      BottomRow(
                        text: 'Dont Have an Account?   ',
                        textButton: 'Sign Up',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()));
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
