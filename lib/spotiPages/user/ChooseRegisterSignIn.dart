import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:further/spotiPages/user/Loading.dart';
import 'package:further/spotiPages/user/Register.dart';
import 'package:further/spotiPages/user/SignIn.dart';
import 'package:further/spotiPages/theme.dart';

class Chooseregistersignin extends StatefulWidget {
  const Chooseregistersignin({super.key});

  @override
  State<Chooseregistersignin> createState() => _ChooseregistersigninState();
}

class _ChooseregistersigninState extends State<Chooseregistersignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        automaticallyImplyLeading: false,
        leading: BackButton(color: Colors.black),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: AppPadding.defaultAllPadding,
        child: Container(
          height: .6.sh,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: .1.sh),
              Container(child: SpotifyLogo(width: 250)),
              Column(
                children: [
                  Text('Enjoy listening to music', style: TextStyles.boldblack),
                  SizedBox(height: 30.h),
                  Text(
                    textAlign: TextAlign.center,
                    'Spotify is a proprietary Swedish audio streaming and media services provider',
                    style: TextStyles.lightblack,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60.h,
                    width: 140.w,
                    child: FloatingActionButton.extended(
                      heroTag: 'choose_register',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                      backgroundColor: AppColors.buttonColor,
                      label: Text('Register', style: TextStyles.mediumwhite),
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                    width: 140.w,
                    child: FloatingActionButton.extended(
                      heroTag: 'choose_signin',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signin()),
                        );
                      },
                      label: Text('Sign in', style: TextStyles.mediumblack),
                      backgroundColor: AppColors.backgroundColor,
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(35),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
