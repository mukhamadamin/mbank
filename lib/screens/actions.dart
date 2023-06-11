import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:mbank/utils/assets.dart';

List<String> texts = ['Wallmart', 'TopUp', 'Netflix'];
List<Widget> logos = [
  Image.asset('assets/brands/Wallmart.png'),
  SvgPicture.asset('assets/brands/Topup.svg'),
  Image.asset('assets/brands/Netflix.png')
];
List<String> date = ['Today 12:32', 'Yesterday 02:12', 'Dec24 13:53'];
List<String> sum = ['35.13', '430.00', '13.00'];

class ActionState extends StatelessWidget {
  const ActionState({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        logos[0],
        Column(
          children: [
            Text(texts[0]),
            Text(date[0]),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 112.0),
          child: Text('-\$${sum[0]}'),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_right_outlined),
        ),
      ],
    );
  }
}

List<Widget> avatars = [
  Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 32,
          child: SvgPicture.asset(
            MBankAssetsAvatars.add,
          ),
        ),
        const Text('Add'),
      ],
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 32,
          child: Image.asset(
            MBankAssetsAvatars.alishan,
          ),
        ),
        const Text('Ali'),
      ],
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 32,
          child: Image.asset(
            MBankAssetsAvatars.amal,
          ),
        ),
        const Text('Amal'),
      ],
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 32,
          child: Image.asset(
            MBankAssetsAvatars.jasur,
          ),
        ),
        const Text('Jasur'),
      ],
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 32,
          child: Image.asset(
            MBankAssetsAvatars.muhammadamin,
          ),
        ),
        const Text('Muham'),
      ],
    ),
  ),
];
