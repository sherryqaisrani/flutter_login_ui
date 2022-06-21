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
              clipBehavior: Clip.none,
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
              height: 594.h,
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
                    height: 66.h,
                  ),
                  SizedBox(
                    height: 96.h,
                    child: SvgPicture.asset(
                      'assets/svg/login_logo.svg',
                    ),
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w800,
                          color: CustomTheme.mainGreenColor,
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        'PAGE',
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w800,
                          color: CustomTheme.mainOrangeColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.r),
                              borderSide: BorderSide(
                                color: CustomTheme.mainBorderColor,
                                width: 1.w,
                                style: BorderStyle.solid,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                40.r,
                              ),
                              borderSide: BorderSide(
                                color: CustomTheme.mainBorderColor,
                                width: 1.w,
                                style: BorderStyle.solid,
                              ),
                            ),
                            hintText: 'Hello@malone.com',
                            hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 16.h,
                            ),
                            prefixIcon: SvgPicture.asset(
                              'assets/svg/email_Icon.svg',
                              fit: BoxFit.scaleDown,
                              height: 10.h,
                              width: 12.w,
                            ),
                            suffixIcon: SvgPicture.asset(
                              'assets/svg/circle_checkMark.svg',
                              fit: BoxFit.scaleDown,
                              width: 20.h,
                              height: 20.h,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                40.r,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                40.r,
                              ),
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 16.h),
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.5),
                            ),
                            filled: true,
                            fillColor: CustomTheme.lightWhiteColor,
                            prefixIcon: SvgPicture.asset(
                              'assets/svg/lock_Icon.svg',
                              fit: BoxFit.scaleDown,
                              width: 14.w,
                              height: 18.h,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 26.h,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              fillColor: MaterialStateProperty.all(
                                  CustomTheme.mainGreenColor),
                              checkColor: Colors.white,
                              splashRadius: 10.r,
                              value: true,
                              onChanged: (_) {},
                            ),
                            Text(
                              'RememberMe',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 50.w,
                            ),
                            Text(
                              'Forget password',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: CustomTheme.mainGreenColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 20,
                              primary: CustomTheme.mainGreenColor,
                              padding: EdgeInsets.symmetric(
                                vertical: 16.h,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 42.h,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svg/facebookIcon.svg',
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  SvgPicture.asset(
                    'assets/svg/google_svg_withBack.svg',
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  SvgPicture.asset(
                    'assets/svg/apple_svg_withBack.svg',
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Sign Up here',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: CustomTheme.mainOrangeColor,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
