import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppColors {
  static const buttonColor  = Color(0xff42C83C);
  static const backgroundColor = Color(0xffF2F2F2);
}

class AppPadding{
  static const EdgeInsets defaultHorizontalPadding = EdgeInsets.symmetric(horizontal: 50);
  static const EdgeInsets defaultVerticalPadding = EdgeInsets.symmetric(horizontal: 30);
  static const EdgeInsets defaultAllPadding = EdgeInsets.symmetric(horizontal: 30, vertical: 50);

}


class TextStyles {
  static final TextStyle boldwhite = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 25.sp,
    fontWeight: FontWeight.w800,
    color: Colors.white
  );
  static final TextStyle boldblack = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 25.sp,
    fontWeight: FontWeight.w800,
    color: Colors.black
  );

  static final TextStyle mediumblack = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 17.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black
  );
  static final TextStyle mediumwhite = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 17.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white
  );

  static final TextStyle lightwhite = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white
  );
   static final TextStyle lightblack = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black
  );
}

