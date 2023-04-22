import 'package:flutter/material.dart';
import 'package:tasky/screens/signup_page.dart';
import 'package:tasky/widget/big_text.dart';
import 'package:tasky/widget/small_text.dart';
import '../widget/button_widget.dart';
import '../widget/stack_circle_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE6E6E6),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Hero(tag: 'hero', child: StackCircleWidget()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(50),
                  margin: const EdgeInsets.only(top: 100, right: 30),
                  child: Center(
                    child: Image.asset('assets/image/img1.png'),
                  ),
                ),
                const BigText(
                  text: 'Get Things Done With TODo',
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: const SmallText(
                      text: 'Arrange your Amazing Day '
                          'By Split into'
                          ' the task and stay '
                          'focus With Our Wonder App'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                ),
                ButtonWidget(
                  text: 'Get Started',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  SignUpPage(),
                    ),
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
