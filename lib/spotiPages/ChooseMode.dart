import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:further/spotiPages/user/ChooseRegisterSignIn.dart';
import 'package:further/spotiPages/user/Loading.dart';
import 'package:further/spotiPages/theme.dart';

class ChooseMode extends StatefulWidget {
  const ChooseMode({super.key});

  @override
  State<ChooseMode> createState() => _GetstartedState();
}

class _GetstartedState extends State<ChooseMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              'assets/image/dua.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: AppPadding.defaultAllPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SpotifyLogo(),
                  SizedBox(height: .2.sh),

                  Column(
                    children: [
                      Text('Choose Mode', style: TextStyles.boldwhite),
                      SizedBox(height: 40.h),
                      Container(
                        width: .8.sw,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/image/backgroundblur.png',
                                    ),
                                    IconButton(
                                      color: Colors.white,
                                      onPressed: () {},
                                      icon: Icon(Icons.dark_mode),
                                      iconSize: 40,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'Dark Mode',
                                  style: TextStyles.mediumwhite,
                                ),
                              ],
                            ),

                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/image/backgroundblur.png',
                                    ),
                                    IconButton(
                                      color: Colors.white,
                                      onPressed: () {},
                                      icon: Icon(Icons.light_mode),
                                      iconSize: 40,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'Light Mode',
                                  style: TextStyles.mediumwhite,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: double.infinity,
                    height: 60.h,
                    child: FloatingActionButton.extended(
                      heroTag: 'choose-mode',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Chooseregistersignin(),
                          ),
                        );
                      },
                      label: Text('Continue', style: TextStyles.boldwhite),
                      backgroundColor: AppColors.buttonColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
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
