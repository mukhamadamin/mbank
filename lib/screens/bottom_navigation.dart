import 'package:flutter/material.dart';
import 'package:mbank/screens/home.dart';
import 'package:mbank/screens/more.dart';
import 'package:mbank/theme/theme_colors.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 0).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    setState(() {
      int currentIndex = index;
      _startAnimation(index);
      if (currentIndex == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      } else if (currentIndex == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const More(),
          ),
        );
      }
    });
  }

  void _startAnimation(int index) {
    _animationController.reset();
    _animation = Tween<double>(begin: _animation.value, end: index.toDouble())
        .animate(_animationController);
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        onTap: _onTabTapped,
        showUnselectedLabels: true,
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.blackCoral,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_rounded),
            label: "Cards",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: "More",
          ),
        ]);
  }
}
