import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';
import 'package:flutter_application_1/view/Main__Screen/mainscree__n.dart';
import 'package:flutter_application_1/view/vallet_screen/vallet_screen.dart';

class Mybalscreen extends StatelessWidget {
  const Mybalscreen({super.key,});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.RED,
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen(),));
          },
          child: Icon(
            Icons.arrow_back,
            color: ColorConstants.white,
          ),
        ),
        title: Text("My Balance",
            style: TextStyle(
                color: ColorConstants.white, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: ColorConstants.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: ColorConstants.Grey, width: 2)),
            child: Column(
              children: [
                Text("Current Balance"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "₹0",
                  style: TextStyle(
                      color: ColorConstants.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ValletScreen(),));
                  },
                  child: Container(
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 47, 180, 52),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                      "ADD CASH",
                      style: TextStyle(
                          color: ColorConstants.white,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Divider(
                    color: ColorConstants.Grey,
                    thickness: 2,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
