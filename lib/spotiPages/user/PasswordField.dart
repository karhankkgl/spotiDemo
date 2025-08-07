import 'package:flutter/material.dart';
import 'package:further/spotiPages/theme.dart';

class Passwordfield extends StatefulWidget {
  const Passwordfield({super.key});

  @override
  State<Passwordfield> createState() => _PasswordfieldState();
}

class _PasswordfieldState extends State<Passwordfield> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(30),
        hintText: 'Password',
        hintStyle: TextStyles.lightblack,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
        ),
      ),
    );
  }
}
