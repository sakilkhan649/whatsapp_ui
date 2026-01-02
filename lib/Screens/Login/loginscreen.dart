import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/OTP/otpscreen.dart';
import 'package:whatsapp/Screens/Widgets/uihelper.dart';

class Loginscreen extends StatefulWidget {
  Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController phoneController = TextEditingController();

  // ✅ Ensure this value exists in the countries list
  List<String> countries = ["America", "Africa", "Italy", "Germany", "India"];
  String selectedcountry = "India"; // or: countries[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
            child: UiHelper.CustomText(
              text: "Enter your phone number",
              height: 20,
              color: Color(0xFF00A884),
              fontweight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          UiHelper.CustomText(
            text: "WhatsApp will need to verify your phone",
            height: 16,
          ),
          UiHelper.CustomText(
            text: "number. Carrier charges may apply.",
            height: 16,
          ),
          UiHelper.CustomText(
            text: " What’s my number?",
            height: 16,
            color: Color(0xFF00A884),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: DropdownButtonFormField(
              items: countries.map((String country) {
                return DropdownMenuItem(child: Text(country), value: country);
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedcountry = value!;
                });
              },
              value: selectedcountry,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF00A884)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF00A884)),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "+91",
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 250,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          login(phoneController.text.toString());
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Enter Phone Number"),
          backgroundColor: Color(0xFF00A884),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Otpscreen(phonenumber: phonenumber),
        ),
      );
    }
  }
}
