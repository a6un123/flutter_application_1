import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';
import 'package:flutter_application_1/view/bottom_navscreen/bottom_nav.dart';
import 'package:flutter_application_1/view/notification_screen/wideget/allscreen.dart';
import 'package:flutter_application_1/view/notification_screen/wideget/offerscreen.dart';

class Notificationscreen extends StatefulWidget {
  const Notificationscreen({super.key});

  @override
  State<Notificationscreen> createState() => _NotificationscreenState();
}

class _NotificationscreenState extends State<Notificationscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorConstants.white,
        appBar: AppBar(
          backgroundColor: Color(0xffB40000),
          leading: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavbar(),
                    ));
              },
              child: Icon(
                Icons.arrow_back,
                color: ColorConstants.white,
              )),
          title: Text(
            "Notifications",
            style: TextStyle(
                color: ColorConstants.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
              child: TabBar(
                tabs: [
                  Text(
                    "ALL",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "OFFERS",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
                indicatorColor: ColorConstants.RED,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: ColorConstants.RED,
                unselectedLabelColor: ColorConstants.black,
              ),
            ),
            Expanded(child: TabBarView(children: [Allscreen(), Offerscreen()]))
          ],
        ),
      ),
    );
  }
}
