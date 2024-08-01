import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lottie/lottie.dart';
import 'package:projectskripsideteksi/core/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    animationController.forward();

    super.initState();
    _checkOnboarding();
  }

  Future<void> _checkOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seenOnboarding = prefs.getBool('seenOnboarding') ?? false;

    Future.delayed(const Duration(seconds: 6)).then((value) {
      if (seenOnboarding) {
        Navigator.popAndPushNamed(context, AppRoutes.loading);
      } else {
        Navigator.popAndPushNamed(context, AppRoutes.onboard);
      }
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF004d00), // Hijau daun yang gelap
              Color(0xFF00ff00), // Hijau terang
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/card1.png',
              height: 200, // Tetapkan tinggi tetap tanpa animasi
            ),
            const SizedBox(height: 20),
            Lottie.asset(
              'assets/lootie/loading.json',
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}