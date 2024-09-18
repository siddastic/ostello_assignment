import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ostello/screens/tabs/tabs.dart';
import 'package:ostello/widgets/break.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(context).pushReplacementNamed(TabScreen.routeName);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: 'user-img',
            child: Center(
              child: Image.asset("assets/images/user.png")
                  .animate()
                  .fade()
                  .scale()
                  .rotate(),
            ),
          ),
          Break.def,
          Text.rich(
            TextSpan(
              text: "Hi, ",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff272A34),
              ),
              children: [
                TextSpan(
                  text: 'Krishna',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ).animate(delay: 1.5.seconds).fadeIn(),
        ],
      ),
    );
  }
}
