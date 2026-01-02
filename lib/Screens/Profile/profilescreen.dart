import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/Screens/Home/homescreen.dart';
import '../Widgets/uihelper.dart';

class Profilescreen extends StatefulWidget {
  Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  TextEditingController nameController = TextEditingController();

  File? pickedimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            Center(
              child: UiHelper.CustomText(
                text: "Profile info",
                height: 20,
                color: Color(0xFF00A884),
                fontweight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            UiHelper.CustomText(
              text: "Please provide your name and an optional",
              height: 16,
            ),
            UiHelper.CustomText(text: "profile photo", height: 16),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _openBottom(context);
              },
              child: pickedimage == null
                  ? CircleAvatar(
                      radius: 60,
                      backgroundColor: Color(0xFFEAEAEA),
                      child: Image.asset(
                        "assets/images/photoicon.png",
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    )
                  : CircleAvatar(
                      radius: 80,
                      backgroundImage: FileImage(pickedimage!),
                    ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: .center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Type your name here",
                      hintStyle: TextStyle(color: Color(0xFF5E5E5E)),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF00A884)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF00A884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF00A884)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Image.asset("assets/images/happy_face.png"),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Homescreen()),
          );
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _openBottom(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: 200,
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.camera);
                    },
                    icon: Icon(Icons.camera_alt, size: 80, color: Colors.grey),
                  ),
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.gallery);
                    },
                    icon: Icon(Icons.image, size: 80, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempimage = File(photo.path);
      setState(() {
        pickedimage = tempimage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(ex.toString()),
          backgroundColor: Color(0xFF00A884),
        ),
      );
    }
  }
}
