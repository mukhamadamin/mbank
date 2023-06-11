// ignore_for_file: unnecessary_import, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mbank/screens/home.dart';
import 'package:mbank/theme/theme_colors.dart';

class sendCode extends StatefulWidget {
  const sendCode({super.key});

  @override
  State<sendCode> createState() => _sendCodeState();
}

var newValue = false;

class _sendCodeState extends State<sendCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
                    style: TextStyle(color: AppColors.blackCoral, fontSize: 14),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 48.h,
                  ),
                  const Text(
                    "An SMS sent to your mobile number +998 93 XXX-XX45",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  const Text(
                    "Enter six-digit code",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.slateGray),
                  ),
                  SizedBox(
                    height: 54.h,
                  ),
                  TextFormField(
                    textAlignVertical: TextAlignVertical.bottom,
                    keyboardType: TextInputType.number,
                    autofocus: true,
                    style: const TextStyle(
                      fontSize: 44,
                      letterSpacing: 2,
                    ),
                    maxLength: 6,
                    decoration: InputDecoration(
                      counter: const SizedBox.shrink(),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.slateGray,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            width: 120),
                      ),
                      hintText: 'XXXXXX',
                      hintStyle: TextStyle(
                        fontSize: 54.sp,
                        letterSpacing: 2,
                        color: AppColors.silverSand,
                      ),
                      constraints:
                          BoxConstraints.tightFor(height: 54.0.h, width: 160),
                    ),
                  ),
                  SizedBox(height: 48.h),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(MediaQuery.of(context).size.width, 45.0.h),
                      backgroundColor: AppColors.blackCoral,
                    ),
                    child: const Text("Done"),
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
