import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';
import 'package:flutter_application_1/view/bottom_navscreen/bottom_nav.dart';

class Morescreen extends StatelessWidget {
  const Morescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.RED,
        leading: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavbar()
                  ));
            },
            child: Icon(
              Icons.arrow_back,
              color: ColorConstants.white,
            )),
        title: Text(
          "More",
          style: TextStyle(
              color: ColorConstants.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}