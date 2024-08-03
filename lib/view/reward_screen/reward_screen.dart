import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';
import 'package:flutter_application_1/view/drawer_screen/drawerscreen.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer_screen(),
      appBar: AppBar(
        title: Text(
          "Rewards",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: ColorConstants.Green,
      ),
    );
  }
}
