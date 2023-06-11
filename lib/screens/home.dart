import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mbank/screens/actions.dart';
import 'package:mbank/screens/bottom_navigation.dart';
import 'package:mbank/screens/login.dart';
import 'package:mbank/screens/recent_transfer.dart';
import 'package:mbank/screens/transactions.dart';
import 'package:mbank/theme/theme_colors.dart';
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
      bottomNavigationBar: const Bottom(),
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
                child: Image.asset(MBankAssetsAvatars.muhammadamin),
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
              autofocus: false,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LogInScreen(),
                  ),
                );
              },
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  color: AppColors.blackCoral,
                  width: double.infinity,
                  height: 216,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.slateGray),
                    width: double.infinity - 16,
                    height: 188,
                    child: Column(
                      children: [
                        const SizedBox(height: 16),
                        const Text("Main balance",
                            style: TextStyle(
                                color: AppColors.white, fontSize: 12)),
                        const Text("\$ 14,235",
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 54,
                                fontWeight: FontWeight.w600)),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: pad,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text('Recent Transfer'),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(mainAxisSize: MainAxisSize.max, children: avatars),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Latest Transaction',
                    style: TextStyle(color: AppColors.black),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View all',
                      style: TextStyle(color: AppColors.blackCoral),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Transactions(),
          ],
        ),
      ),
    );
  }
}
