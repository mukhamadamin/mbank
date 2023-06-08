import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mbank/theme/theme_colors.dart';
import '../utils/assets.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  State<CreateUser> createState() => _CreateUserState();
}

bool newValue = false;

class _CreateUserState extends State<CreateUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        title: Title(
          color: AppColors.white,
          child: Text(
            "MBank",
            style: TextStyle(
                color: AppColors.blackCoral,
                fontSize: 22.0.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
        leadingWidth: 82.0.w,
        leading: IconButton(
          style: IconButton.styleFrom(
            maximumSize: Size(
              58.0.w,
              14.0.h,
            ),
          ),
          icon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.chevron_left,
                color: AppColors.slateGray,
              ),
              Text(
                "Back",
                style: TextStyle(
                    color: AppColors.slateGray,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          onPressed: () {},
          tooltip: "Back",
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 178.h,
                      ),
                      Text(
                        "Create Account",
                        style: TextStyle(
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Text(
                        'name',
                        style: TextStyle(
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextFormField(
                        textAlignVertical: TextAlignVertical.bottom,
                        autofocus: true,
                        style: const TextStyle(),
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(gapPadding: 0.0),
                          hintText: 'Mukhammadamin Yakhyoyev',
                          constraints: BoxConstraints.tightFor(height: 45.0.h),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextFormField(
                        textAlignVertical: TextAlignVertical.bottom,
                        autofocus: true,
                        style: const TextStyle(),
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(gapPadding: 0.0),
                          hintText: 'mukhammadaminyakhyayev@gmail.com',
                          constraints: BoxConstraints.tightFor(height: 45.0.h),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextFormField(
                        textAlignVertical: TextAlignVertical.bottom,
                        style: const TextStyle(),
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.remove_red_eye_outlined,
                            ),
                            color: AppColors.slateGray,
                          ),
                          border: const OutlineInputBorder(gapPadding: 0.0),
                          hintText: "Enter your password",
                          constraints: BoxConstraints.tightFor(height: 45.0.h),
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Row(
                        children: [
                          Checkbox(
                            value: newValue,
                            activeColor: AppColors.blackCoral,
                            onChanged: (value) {
                              setState(() {
                                newValue = value!;
                              });
                            },
                          ),
                          const Expanded(
                            child: Text(
                              "I accept terms and conditions and privacy policy",
                              style: TextStyle(
                                  fontSize: 12, color: AppColors.black),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      ElevatedButton(
                        onPressed: () {},
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
                              child: SvgPicture.asset(MBankAssets.facebook),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(100.0.w, 45.0.h),
                                backgroundColor: AppColors.white),
                            child: SvgPicture.asset(MBankAssets.google),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(100.0.w, 45.0.h),
                                  backgroundColor: AppColors.white),
                              child: SvgPicture.asset(MBankAssets.apple),
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
      ),
    );
  }
}
