import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';
import 'package:flutter_application_1/view/bottom_navscreen/bottom_nav.dart';

class InfoAndsettings extends StatelessWidget {
  const InfoAndsettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.black,
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavbar()));
          },
          child: Icon(
            Icons.arrow_back,
            color: ColorConstants.white,
          ),
        ),
        title: Text(
          "My Info & Settings",
          style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstants.white),
        ),
      ),
    );
  }
}