import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/Main__Screen/mainscree__n.dart';
import 'package:flutter_application_1/view/Mymatches/my_matches.dart';
import 'package:flutter_application_1/view/chatscreen/chat_screen.dart';
import 'package:flutter_application_1/view/reward_screen/reward_screen.dart';
import 'package:flutter_application_1/view/winnersscreen/winners_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectedIndex =0;
  List<Widget> Myscreens = [
   MainScreen(),
   MyMatches(),
  RewardScreen(),
   ChatScreen(),
   WinnersScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.sports_score_rounded),label: "Matches"),
        BottomNavigationBarItem(icon: Icon(Icons.card_giftcard_outlined),label: "Rewards"),
        BottomNavigationBarItem(icon: Icon(Icons.chat_outlined),label: "Chat"),
        BottomNavigationBarItem(icon: Icon(Icons.military_tech),label: "Winners"),
      ],
      onTap: (value) {
        selectedIndex =value;
        setState(() {
          
        });
      },
      ),
      body: Myscreens[selectedIndex],
    );
  }
}