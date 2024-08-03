import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';
import 'package:flutter_application_1/view/drawer_screen/drawerscreen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer_screen(),
      appBar: AppBar(
        backgroundColor: ColorConstants.RED,
        title: Text("Chat",style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
      ),
    );
  }
}