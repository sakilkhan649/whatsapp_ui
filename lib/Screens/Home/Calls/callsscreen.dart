import 'package:flutter/material.dart';
import '../../Widgets/uihelper.dart';

class Callsscreen extends StatelessWidget {
  Callsscreen({super.key});

  var callContent = [
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "calltime": "40 min ago",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "calltime": "30 min ago",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "calltime": "20 min ago",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "calltime": "50 min ago",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "calltime": "10 min ago",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "calltime": "59 min ago",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "calltime": "40 min ago",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "calltime": "30 min ago",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "calltime": "20 min ago",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "calltime": "50 min ago",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "calltime": "10 min ago",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "calltime": "59 min ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(text: "Recent", height: 20),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: callContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      callContent[index]["img"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: callContent[index]["name"].toString(),
                    height: 18,
                    fontweight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: callContent[index]["calltime"].toString(),
                    height: 16,
                    fontweight: FontWeight.bold,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.call, color: Color(0xFF00A884)),
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
