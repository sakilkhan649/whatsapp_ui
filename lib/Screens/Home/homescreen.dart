import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Home/Calls/callsscreen.dart';
import 'package:whatsapp/Screens/Home/Camera/camerascreen.dart';
import 'package:whatsapp/Screens/Home/Chats/chatsscreen.dart';
import 'package:whatsapp/Screens/Home/Status/statusescreen.dart';
import 'package:whatsapp/Screens/Widgets/uihelper.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 100,
          title: UiHelper.CustomText(
            text: "WhatsApp",
            height: 20,
            color: Color(0xFFFFFFFF),
            fontweight: FontWeight.bold,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/Searchicon.png"),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
          ],
        ),
        body: TabBarView(
          children: [
            Camerascreen(),
            Chatsscreen(),
            Statusescreen(),
            Callsscreen(),
          ],
        ),
      ),
    );
  }
}
