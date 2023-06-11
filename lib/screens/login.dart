import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mbank/screens/create_user.dart';
import 'package:mbank/screens/passScreen.dart';
import 'package:mbank/theme/theme_colors.dart';
import 'package:mbank/utils/assets.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 340.0.h,
                width: MediaQuery.of(context).size.width,
                color: AppColors.magnolia,
                child: Column(
                  children: [
                    Text(
                      'MBank',
                      style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.shuttleGray,
                      ),
                    ),
                    SizedBox(height: 58.0.h),
                    SvgPicture.asset(
                      MBankAssetsSvg.logInSvg,
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
                      'Enter your\nmobile number',
                      style: TextStyle(
                        fontSize: 21.0.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 24.0.h, bottom: 4.0.h),
                      child: Text(
                        'Mobile number',
                        style: TextStyle(
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    TextFormField(
                      textAlignVertical: TextAlignVertical.bottom,
                      autofocus: true,
                      style: const TextStyle(),
                      decoration: InputDecoration(
                        counter: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CreateUser(),
                                ),
                              );
                            },
                            child: const Text(
                              'Create new account',
                              style: TextStyle(color: AppColors.slateGray),
                            )),
                        border: const OutlineInputBorder(gapPadding: 0.0),
                        prefixText: ' +998   ',
                        prefixStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.slateGray,
                        ),
                        hintText: 'XX-XXX-XX-XX',
                        constraints: BoxConstraints.tightFor(height: 90.0.h),
                      ),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PassScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize:
                            Size(MediaQuery.of(context).size.width, 45.0.h),
                        backgroundColor: AppColors.blackCoral,
                      ),
                      child: const Text("Continue"),
                    ),
                    SizedBox(height: 80.0.h),
                    const Stack(
                      alignment: Alignment.center,
                      children: [
                        Divider(),
                        Text(
                          'or continue using',
                          style: TextStyle(
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(100.0.w, 45.0.h),
                                backgroundColor: AppColors.white),
                            child: SvgPicture.asset(MBankAssetsSvg.facebook),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(100.0.w, 45.0.h),
                              backgroundColor: AppColors.white),
                          child: SvgPicture.asset(MBankAssetsSvg.google),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(100.0.w, 45.0.h),
                                backgroundColor: AppColors.white),
                            child: SvgPicture.asset(MBankAssetsSvg.apple),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:mbank/utils/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 384,
              child: Column(
                children: [
                  Align(
                    child: Text(
                      "MBank",
                      style: TextStyle(
                        fontFamily: "Spartan",
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 58,
                  ),
                  SvgPicture.asset(
                    MBankAssets.logInSvg,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    SizedBox(
                      width: 159,
                      child: Text("Enter your mobile number",
                          style: TextStyle(
                              fontFamily: "Sora",
                              fontSize: 21,
                              fontWeight: FontWeight.w700)),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                        width: 92,
                        child: Text("Mobile number",
                            style: TextStyle(
                                fontFamily: "Sora",
                                fontSize: 12,
                                fontWeight: FontWeight.w300))),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'XX-XXX-XX-XX',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 48,
            ),
          ],
        ),
      ),
    );
  }
}
*/
