import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Home/Contact/contactscreen.dart';
import 'package:whatsapp/Screens/Widgets/uihelper.dart';

class Chatsscreen extends StatelessWidget {
  Chatsscreen({super.key});

  var arrContent = [
    {
      "UserImages":
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "name": "Sathi",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "UserImages":
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "name": "Sathi",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "1",
    },
    {
      "UserImages":
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "name": "Sathi",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "2",
    },
    {
      "UserImages":
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "name": "Sathi",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "3",
    },
    {
      "UserImages":
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "name": "Sathi",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "4",
    },
    {
      "UserImages":
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "name": "Sathi",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "UserImages":
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "name": "Sathi",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "1",
    },
    {
      "UserImages":
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "name": "Sathi",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "2",
    },
    {
      "UserImages":
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "name": "Sathi",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "3",
    },
    {
      "UserImages":
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "name": "Sathi",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: arrContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      arrContent[index]["UserImages"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: arrContent[index]["name"].toString(),
                    fontweight: FontWeight.bold,
                    height: 14,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: arrContent[index]["lastmsg"].toString(),
                    height: 13,
                  ),
                  trailing: Column(
                    mainAxisAlignment: .center,
                    children: [
                      UiHelper.CustomText(
                        text: arrContent[index]["time"].toString(),
                        color: Color(0xFF026500),
                        height: 12,
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Color(0xFF026500),
                        child: UiHelper.CustomText(
                          text: arrContent[index]["msg"].toString(),
                          color: Colors.white,
                          height: 12,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Contactscreen()),
          );
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0xFF008665),
          child: Image.asset("assets/images/flotingicon.png"),
        ),
      ),
    );
  }
}
