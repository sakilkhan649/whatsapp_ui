import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Widgets/uihelper.dart';

class Statusescreen extends StatelessWidget {
  Statusescreen({super.key});

  var statusContent = [
    {
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "name": "Micheal",
      "statustime": "15 min ago",
    },
    {
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "name": "Micheal",
      "statustime": "1  day ago",
    },
    {
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "name": "Micheal",
      "statustime": "45 min ago",
    },
    {
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "name": "Micheal",
      "statustime": "20 min ago",
    },
    {
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "name": "Micheal",
      "statustime": "40 min ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(text: "Status", height: 20),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      "https://img.freepik.com/premium-vector/man-profile-cartoon_18591-58482.jpg?w=360",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFF00A884),
                      child: Center(
                        child: Icon(Icons.add, color: Colors.white, size: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: UiHelper.CustomText(text: "My Status", height: 20),
            subtitle: UiHelper.CustomText(
              text: "Tap to add status update",
              height: 15,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                UiHelper.CustomText(text: "Recent updates", height: 15),
                Icon(Icons.arrow_drop_down, color: Color(0xFF5E5E5E)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: statusContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      statusContent[index]["img"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: statusContent[index]["name"].toString(),
                    height: 16,
                    fontweight: FontWeight.bold,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: statusContent[index]["statustime"].toString(),
                    height: 14,
                    fontweight: FontWeight.bold,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
