import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';
import 'package:flutter_application_1/view/how_toplayscreen/howtoplay_screen.dart';
import 'package:flutter_application_1/view/infoandsettingsscreen.dart/infoandsett.dart';
import 'package:flutter_application_1/view/morescreen/morescreen.dart';
import 'package:flutter_application_1/view/mybalscreen/mybalscreen.dart';
import 'package:flutter_application_1/view/referandernscreen/refeandernscreen.dart';

class Drawer_screen extends StatelessWidget {
  const Drawer_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
              height: 130,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                ColorConstants.black,
                Colors.green,
              ])),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "macalister",
                    style: TextStyle(color: ColorConstants.white),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 15,
              left: 36,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: 220,
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "ADD CASH",
                  style: TextStyle(
                      color: ColorConstants.Green,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 20,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Mybalscreen(),));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                      color: ColorConstants.white,
                      borderRadius: BorderRadius.circular(10)),
                  width: 250,
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        color: ColorConstants.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "My Balance",
                        style: TextStyle(color: ColorConstants.black),
                      ),
                      Spacer(),
                      Text("₹ 0",
                          style: TextStyle(
                              color: ColorConstants.black, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => RefandernScreen(),
                ));
          },
          child: ListTile(
            leading: Icon(Icons.person_add_alt_sharp),
            title: Text("Refer&Earn"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Divider(
            thickness: 2,
            color: ColorConstants.Grey,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => InfoAndsettings(),
                ));
          },
          child: ListTile(
            leading: Icon(Icons.settings),
            title: Text("My info & settings"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Divider(
            thickness: 2,
            color: ColorConstants.Grey,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Howtoplayscreen(),));
          },
          child: ListTile(
            leading: Icon(Icons.sports_esports),
            title: Text("How to Play"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Divider(
            thickness: 2,
            color: ColorConstants.Grey,
          ),
        ),
        InkWell(onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Morescreen(),));
        },
          child: ListTile(
            leading: Icon(Icons.more_vert),
            title: Text("More"),
          ),
        )
      ],
    ));
  }
}
