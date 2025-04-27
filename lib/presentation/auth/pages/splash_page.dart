

import 'package:flutter/material.dart';
import 'package:training/core/constants/colors.dart';
import 'package:training/presentation/home/pages/main_page.dart';

import '../../../core/assets/assets.gen.dart';
import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
    super.initState();
    // Add code after super
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Center(child: Assets.lottie.loading.lottie()),
          ),
          const Spacer(),
          Assets.images.logo.image(width: 150, height: 150),

        ],
      )
    );
  }
}
