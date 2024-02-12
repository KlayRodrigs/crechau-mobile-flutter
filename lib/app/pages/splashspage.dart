import 'package:crechau_mobile/app/pages/homepage.dart';
import 'package:crechau_mobile/app/utils/colors.dart';
import 'package:flutter/material.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2))
        .then((value) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.corBranca,
      body: Stack(
        children: [
          Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset("assets/images/logo.jpg"))),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Center(
              child: CircularProgressIndicator(
                strokeAlign: 48,
                color: MyColors.corAzul,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
