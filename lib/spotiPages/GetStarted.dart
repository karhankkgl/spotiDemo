import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:further/spotiPages/ChooseMode.dart';
import 'package:further/spotiPages/user/Loading.dart';
import 'package:further/spotiPages/theme.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              'assets/image/ariana.png',
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
                  SizedBox(height: .3.sh),
                  Text('Enjoy listening to music', style: TextStyles.boldwhite),
                  Container(
                    width: .8.sw,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                      textAlign: TextAlign.center,
                      maxLines: 5,
                      style: TextStyles.lightwhite,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60.h,
                    child: ContinueButton(),
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

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ChooseMode()),
        );
      },
      label: Text('Get Started', style: TextStyles.boldwhite),
      backgroundColor: AppColors.buttonColor,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }
}
