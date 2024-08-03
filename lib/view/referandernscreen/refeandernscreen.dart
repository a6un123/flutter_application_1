import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';
import 'package:flutter_application_1/view/bottom_navscreen/bottom_nav.dart';

class RefandernScreen extends StatelessWidget {
  const RefandernScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [ColorConstants.RED, ColorConstants.black])),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavbar()
                ));
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: ColorConstants.white,
          ),
        ),
        title: Text(
          "invite friends",
          style: TextStyle(color: ColorConstants.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://couponswala.com/blog/wp-content/uploads/2020/10/Dream11-referral-code-1.jpg.webp"))),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "They play,you collect",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Every time your friend reaches a milestone,you collect excting rewards",
                  style: TextStyle(fontWeight: FontWeight.w400),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}