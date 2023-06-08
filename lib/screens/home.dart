import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mbank/theme/theme_colors.dart';
// import 'package:mbank/theme/theme_colors.dart';
import '../utils/assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blackCoral,
        elevation: 0,
        leadingWidth: double.infinity,
        leading: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: CircleAvatar(
                radius: 24,
                child: SvgPicture.asset(MBankAssets.mukhammadamin),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 100),
              child: Text(
                "Hello,\nMukhammadamin",
                style: TextStyle(color: AppColors.white, fontSize: 14.sp),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                size: 20.0,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: AppColors.blackCoral,
                  width: 360,
                  height: 226,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.slateGray),
                    width: 328,
                    height: 178,
                    child: Column(
                      children: [
                        SizedBox(height: 24.h),
                        Text("Main balance",
                            style: TextStyle(
                                color: AppColors.white, fontSize: 12.sp)),
                        Text("\$ 14,235",
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 54.sp,
                                fontWeight: FontWeight.w600)),
                        SizedBox(height: 36.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 24),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    alignment: Alignment.bottomCenter,
                                    elevation: 0,
                                    fixedSize: Size(100.0.w, 60.0.h),
                                    backgroundColor: AppColors.slateGray),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(MBankAssets.topup),
                                    Text(
                                      "Top up",
                                      style: TextStyle(fontSize: 12.sp),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  alignment: Alignment.bottomCenter,
                                  elevation: 0,
                                  fixedSize: Size(100.0.w, 60.0.h),
                                  backgroundColor: AppColors.slateGray),
                              child: Column(
                                children: [
                                  SvgPicture.asset(MBankAssets.withdraw),
                                  Text(
                                    "Withdraw",
                                    style: TextStyle(fontSize: 12.sp),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 24),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    alignment: Alignment.bottomCenter,
                                    elevation: 0,
                                    fixedSize: Size(100.0.w, 60.0.h),
                                    backgroundColor: AppColors.slateGray),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(MBankAssets.transfer),
                                    Text(
                                      "Transfer",
                                      style: TextStyle(fontSize: 12.sp),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Text('Recent Transfer'),
            SizedBox(height: 16.h),
            ListView(
              children: avatars(),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> avatars() {
  List<Widget> avatars = [
    SvgPicture.asset('assets/avatars/Add.svg'),
    SvgPicture.asset('assets/avatars/Alishan.svg'),
    SvgPicture.asset('assets/avatars/Amal.svg'),
    SvgPicture.asset('assets/avatars/Jasur.svg'),
    SvgPicture.asset('assets/avatars/Muhammadamin.svg'),
  ];
  return avatars;
}
