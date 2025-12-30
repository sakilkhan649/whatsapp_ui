import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Onboarding/onboardingscreen.dart';
import 'package:whatsapp/Screens/Widgets/uihelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Onboardingscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 160,),
              child: Image.asset("assets/images/whatsapplogo.png"),
            ),
            SizedBox(height: 21),
            UiHelper.CustomText(
              text: "WhatsApp",
              height: 18,
              fontweight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
