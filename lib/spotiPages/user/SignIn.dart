import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:further/main.dart';
import 'package:further/spotiPages/ControllerHomePage.dart';
import 'package:further/spotiPages/user/Loading.dart';
import 'package:further/spotiPages/user/PasswordField.dart';
import 'package:further/spotiPages/theme.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _fromKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _obscureText = true;
  String? errorMessage;

  void _signIn() {
    if (_fromKey.currentState!.validate()) {
      if (emailController.text == fixedEmail &&
          passwordController.text == fixedPassword) {
        setState(() {
          errorMessage = 'girdin';
        });
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => Controllerhomepage()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: BackButton(),
        title: SpotifyLogo(width: 150),
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.defaultAllPadding,
          child: Form(
            key: _fromKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: 20.h),
                Text('Sign in', style: TextStyles.boldblack),
                SizedBox(height: 30.h),
                RichText(
                  text: TextSpan(
                    text: 'If you need any support ',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'click here.',
                        style: TextStyle(
                          color: AppColors.buttonColor,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('click here tapped!');
                          },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email Boş olamaz';
                    }
                    return null;
                  },
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(30),
                    hintText: 'Enter Username or Email',
                    hintStyle: TextStyles.lightblack,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Şifre Boş olamaz!!';
                    }
                    if (value.length < 3) {
                      return 'şifre en az 3 karakter içermeli';
                    }
                    return null;
                  },
                  onFieldSubmitted: (value) => _signIn(),

                  controller: passwordController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(30),
                    hintText: 'Password',
                    hintStyle: TextStyles.lightblack,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Recovery Password',
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: double.infinity,
                  height: 60.h,
                  child: FloatingActionButton.extended(
                    heroTag: 'sign-in',

                    onPressed: () {
                      _signIn();
                    },
                    label: Text('Sign In', style: TextStyles.boldwhite),
                    backgroundColor: AppColors.buttonColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Text('or'),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.google),
                      iconSize: 40,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.apple),
                      alignment: Alignment.topCenter,
                      iconSize: 50,
                      onPressed: () {},
                    ),
                    SizedBox(),
                  ],
                ),
                SizedBox(height: 30.h),
                RichText(
                  text: TextSpan(
                    text: 'Not A Member ?',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: ' Register Now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('register tapped!');
                          },
                      ),
                    ],
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
