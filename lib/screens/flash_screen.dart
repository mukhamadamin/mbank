// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

void main() => runApp(const Splash_Screen());

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: SizedBox(
              width: 256,
              height: 238,
              child: Image(
                image: AssetImage('assets/лого.png'),
              )),
        ),
      ),
    );
  }
}
