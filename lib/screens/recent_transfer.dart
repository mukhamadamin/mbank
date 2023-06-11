import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mbank/theme/theme_colors.dart';
import 'package:mbank/utils/assets.dart';

List<Widget> pad = [
  Padding(
    padding: const EdgeInsets.only(right: 4),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          elevation: 0,
          fixedSize: const Size(90.0, 60.0),
          backgroundColor: AppColors.slateGray),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(MBankAssetsSvg.topup),
          const Text(
            "Top up",
            style: TextStyle(fontSize: 12),
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
        fixedSize: const Size(90.0, 60.0),
        backgroundColor: AppColors.slateGray),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(MBankAssetsSvg.withdraw),
        const Text(
          "Withdraw",
          style: TextStyle(fontSize: 12),
        )
      ],
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(left: 4),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          alignment: Alignment.bottomCenter,
          elevation: 0,
          fixedSize: const Size(90.0, 60.0),
          backgroundColor: AppColors.slateGray),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(MBankAssetsSvg.transfer),
          const Text(
            "Transfer",
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    ),
  ),
];
