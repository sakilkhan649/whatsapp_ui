import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Widgets/uihelper.dart';

class Contactscreen extends StatelessWidget {
  Contactscreen({super.key});

  var contactContent = [
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "status": "Busy",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "status": "Busy",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "status": "Busy",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "status": "Busy",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "status": "Busy",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "status": "Busy",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "status": "Busy",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "status": "Busy",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "status": "Busy",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "status": "Cool",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "status": "Busy",
    },
    {
      "name": "Aron",
      "img":
          "https://static.wixstatic.com/media/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg/v1/fit/w_280,h_281,q_90,enc_avif,quality_auto/efb279_47c2d1e11d3048fa88835a5892e995d2~mv2.jpg",
      "status": "Busy",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(
          text: "Select Contact",
          height: 16,
          color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
        ],
      ),
      body: ListView.builder(
        itemCount: contactContent.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                contactContent[index]["img"].toString(),
              ),
            ),
            title: UiHelper.CustomText(
              text: contactContent[index]["name"].toString(),
              height: 16,
              fontweight: FontWeight.bold,
              color: Colors.black,
            ),
            subtitle: UiHelper.CustomText(
              text: contactContent[index]["status"].toString(),
              height: 14,
            ),
          );
        },
      ),
    );
  }
}
