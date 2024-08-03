import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';
import 'package:flutter_application_1/view/bottom_navscreen/bottom_nav.dart';
import 'package:flutter_application_1/view/how_toplayscreen/widget/gridviewCard.dart';

class Howtoplayscreen extends StatelessWidget {
  const Howtoplayscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => BottomNavbar()));
              },
              child: Icon(
                Icons.arrow_back,
                color: ColorConstants.white,
              )),
          title: Text(
            "How to Play",
            style: TextStyle(
                color: ColorConstants.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          itemCount: 11,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20,mainAxisExtent: 80,),
          itemBuilder: (context, index) => Gridviewcard(),
        ));
  }
}
