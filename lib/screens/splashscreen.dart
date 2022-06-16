import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screens/widgets/themes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 90.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 192.h,
                width: 166.w,
                child: SvgPicture.asset(
                  'assets/svg/login_logo.svg',
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w800,
                    color: CustomTheme.mainGreenColor,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'PAGES',
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w800,
                    color: CustomTheme.mainColor,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'UI',
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w800,
                    color: CustomTheme.mainColor,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'KIT',
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w800,
                    color: CustomTheme.mainGreenColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
