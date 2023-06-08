import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mbank/screens/home.dart';
// import 'package:mbank/screens/sendCode.dart';
// import 'package:mbank/screens/login.dart';
// import 'package:mbank/screens/passScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430.0, 932.0),
      splitScreenMode: true,
      minTextAdapt: true,
      scaleByHeight: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
          ),
          home: child,
        );
      },
      child: const HomeScreen(),
    );
  }
}
