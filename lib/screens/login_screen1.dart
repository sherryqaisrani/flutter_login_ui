import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_screens/widgets/themes.dart';

class LoginScreen1 extends StatefulWidget {
  LoginScreen1({Key? key}) : super(key: key);

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  InputDecoration getInputDecoration({required String hintText}) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        borderSide: BorderSide(
          color: Colors.black.withOpacity(
            0.1,
          ),
          style: BorderStyle.solid,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        borderSide: BorderSide(
          color: Colors.black.withOpacity(
            0.1,
          ),
          style: BorderStyle.solid,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(
        vertical: 20.h,
        horizontal: 20.w,
      ),
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 110.h,
            ),
            SizedBox(
              height: 96.h,
              child: (SvgPicture.asset(
                'assets/svg/login_logo.svg',
              )),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
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
                  'Page',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800,
                    color: CustomTheme.mainColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
              ),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(hintText: 'ABC@gmail.com'),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    decoration: getInputDecoration(hintText: '*********'),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 62.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          vertical: 20.h,
                        ),
                        primary: CustomTheme.mainGreenColor,
                      ),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    'Or Sign in with',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: CustomTheme.lightgrayCode,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 62.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            40.r,
                          ),
                          side: const BorderSide(
                            color: Colors.black,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30.w,
                          ),
                          SvgPicture.asset(
                            'assets/svg/googleIcons.svg',
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Text(
                            'Sign in with Google',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: CustomTheme.lightGoogleSignInCode,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 62.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              40.r,
                            ),
                            side: const BorderSide(color: Colors.transparent),
                          )),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 14.h,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30.w,
                            ),
                            SvgPicture.asset(
                              'assets/svg/appleIcon.svg',
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                            Text(
                              'Sign in with Apple',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account ?',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: CustomTheme.lightgrayCode,
                        ),
                      ),
                      Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: CustomTheme.mainGreenColor,
                        ),
                      ),
                    ],
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
