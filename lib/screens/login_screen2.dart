import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screens/widgets/themes.dart';

class LoginScreen2 extends StatefulWidget {
  LoginScreen2({Key? key}) : super(key: key);

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
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
          10,
        ),
        borderSide: BorderSide(
          color: Colors.black.withOpacity(0.1),
          style: BorderStyle.solid,
        ),
      ),
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: CustomTheme.lightBlack,
      ),
      contentPadding: EdgeInsets.symmetric(
        vertical: 20.h,
        horizontal: 20.w,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.mainGreenColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 99.h,
            ),
            SizedBox(
              width: double.infinity,
              height: 713.h,
              child: Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      40.r,
                    ),
                    topRight: Radius.circular(
                      40.r,
                    ),
                  ),
                  side: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 47.h,
                      ),
                      Text(
                        'Login Account',
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          color: CustomTheme.lightBlack,
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        'Discover your social & Try to Login',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: CustomTheme.lightgrayCode,
                        ),
                      ),
                      SizedBox(
                        height: 51.h,
                      ),
                      SizedBox(
                        height: 96.h,
                        width: 87.w,
                        child: SvgPicture.asset(
                          'assets/svg/login_logo.svg',
                        ),
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
                        height: 65.h,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: getInputDecoration(
                          hintText: 'ABCE@gmail.com',
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        obscureText: true,
                        decoration: getInputDecoration(
                          hintText: '***********',
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: CustomTheme.mainGreenColor,
                            padding: EdgeInsets.symmetric(
                              vertical: 16.h,
                            ),
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                50.r,
                              ),
                              side: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
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
                            'Don\'t have an account?',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: CustomTheme.lightBlack,
                            ),
                          ),
                          Text(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
