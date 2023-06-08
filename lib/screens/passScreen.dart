// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mbank/theme/theme_colors.dart';
import 'package:mbank/utils/assets.dart';

class PassScreen extends StatelessWidget {
  const PassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 340.0.h,
              width: MediaQuery.of(context).size.width,
              color: AppColors.magnolia,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                        ),
                        child: Icon(
                          Icons.chevron_left_outlined,
                          color: AppColors.blackCoral,
                          size: 20,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 66),
                        child: Text(
                          "Back",
                          style: TextStyle(
                              color: AppColors.blackCoral, fontSize: 14),
                        ),
                      ),
                      Text(
                        'MBank',
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.shuttleGray,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 58.0.h),
                  SvgPicture.asset(
                    MBankAssets.protect,
                    width: 190.0.w,
                    height: 190.0.h,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.0.w,
                top: 17.0.h,
                right: 16.0.w,
                bottom: 40.0.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter your password',
                    style: TextStyle(
                      fontSize: 21.0.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.0.h, bottom: 4.0.h),
                    child: Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackCoral),
                    ),
                  ),
                  TextFormField(
                    textAlignVertical: TextAlignVertical.bottom,
                    style: const TextStyle(),
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: AppColors.slateGray,
                      ),
                      counterText: "Forgot password?",
                      border: const OutlineInputBorder(gapPadding: 0.0),
                      hintText: "Enter your password",
                      constraints: BoxConstraints.tightFor(height: 75.0.h),
                    ),
                  ),
                  SizedBox(
                    height: 147.h,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(MediaQuery.of(context).size.width, 45.0.h),
                      backgroundColor: AppColors.blackCoral,
                    ),
                    child: const Text("Login"),
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
