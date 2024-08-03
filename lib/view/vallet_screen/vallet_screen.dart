import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';
import 'package:flutter_application_1/view/bottom_navscreen/bottom_nav.dart';


class ValletScreen extends StatelessWidget {
  const ValletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.Grey,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>BottomNavbar()));
          },
          child: Icon(Icons.arrow_back, color: ColorConstants.white)),
        title: Text(
          "Add Cash",
          style: TextStyle(
              color: ColorConstants.white,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 76, 12, 7),
            ColorConstants.black
          ], begin: Alignment.topLeft, end: Alignment.topRight)),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            height: 50,
            color: ColorConstants.white,
            child: Row(
              children: [
                Icon(
                  Icons.account_balance_wallet,
                  color: Color.fromARGB(255, 237, 77, 65),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Current Balance",
                  style: TextStyle(
                      color: ColorConstants.black, fontWeight: FontWeight.w500),
                ),
                Icon(Icons.arrow_drop_down),
                Spacer(),
                Text("\$0")
              ],
            ),
          )
        ],
      ),
    );
  }
}
