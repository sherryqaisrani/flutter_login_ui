import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screens/widgets/themes.dart';

class LoginScreen3 extends StatefulWidget {
  LoginScreen3({Key? key}) : super(key: key);

  @override
  State<LoginScreen3> createState() => _LoginScreen3State();
}

class _LoginScreen3State extends State<LoginScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.mainGreenColor,
      body: Column(
        children: [
          SizedBox(
            height: 76.h,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 63,
                  right: 43,
                  child: SvgPicture.asset(
                    'assets/svg/top_line.svg',
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 43,
                  left: 0,
                  child: SvgPicture.asset(
                    'assets/svg/left_line.svg',
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 31,
                  right: 0,
                  child: SvgPicture.asset(
                    'assets/svg/right_line.svg',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Container(
              height: 564.h,
              width: 335.w,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    40,
                  ),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 96.h,
                    child: SvgPicture.asset(
                      'assets/svg/login_logo.svg',
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'LOGIN',
                      ),
                      Text(
                        'PAGE',
                      ),
                    ],
                  ),
                  TextFormField(),
                  TextFormField(),
                  Row(
                    children: [
                      Text(
                        'check',
                      ),
                      Text(
                        'RememberMe',
                      ),
                      Text(
                        'Forget password',
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Sign in',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
