import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String text;
  final TextInputType? textInputType;
  final bool obscureText;
  final TextEditingController? controller;

  const RoundedTextField({
    required this.text,
    this.textInputType,
    this.obscureText = false,
    super.key,  this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: textInputType,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: text,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
