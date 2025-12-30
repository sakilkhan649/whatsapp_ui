import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Login/loginscreen.dart';
import 'package:whatsapp/Screens/Widgets/uihelper.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        children: [
          Image.asset("assets/images/imageqr.png"),
          SizedBox(height: 20),
          UiHelper.CustomText(
            text: "Welcome to WhatsApp",
            height: 20,
            color: Color(0xFF000000),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: .center,
            children: [
              UiHelper.CustomText(text: "Read out", height: 14),
              UiHelper.CustomText(
                text: " Privacy Policy.",
                height: 14,
                color: Color(0xFF0C42CC),
              ),
              UiHelper.CustomText(text: "Tap “Agree and continue”", height: 14),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: .center,
            children: [
              UiHelper.CustomText(text: "to accept the", height: 14),
              UiHelper.CustomText(
                text: "Teams of Service.",
                height: 14,
                color: Color(0xFF0C42CC),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Loginscreen()),
          );
        },
        buttonname: "Agree and continue",
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat ,
    );
  }
}
