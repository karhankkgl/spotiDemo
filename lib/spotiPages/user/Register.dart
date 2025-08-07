import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:further/spotiPages/user/Loading.dart';
import 'package:further/spotiPages/user/PasswordField.dart';
import 'package:further/spotiPages/theme.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _SigninState();
}

class _SigninState extends State<Register> {
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

      body: Padding(
        padding: AppPadding.defaultAllPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(height: 10.h),
            Text('Register', style: TextStyles.boldblack),
            SizedBox(height: 15.h),
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
            SizedBox(height: 15.h),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(30),
                hintText: 'Full Name',
                hintStyle: TextStyles.lightblack,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(30),
                hintText: 'Enter Email',
                hintStyle: TextStyles.lightblack,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Passwordfield(),
            SizedBox(height: 25.h),
            SizedBox(
              width: double.infinity,
              height: 60.h,
              child: FloatingActionButton.extended(
                heroTag: 'register',
                onPressed: () {},
                label: Text('Create Account', style: TextStyles.boldwhite),
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
                text: 'Do You Have An Account ?',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: ' Sign in',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('Sign in tapped!');
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
