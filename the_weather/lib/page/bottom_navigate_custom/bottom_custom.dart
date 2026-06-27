import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_weather/page/detail/detail_page.dart';
import 'package:the_weather/page/home/home_page.dart';

class BottomNavigationCustom extends StatefulWidget {
  const BottomNavigationCustom({super.key});

  @override
  State<BottomNavigationCustom> createState() => _BottomNavigationCustomState();
}

class _BottomNavigationCustomState extends State<BottomNavigationCustom> {
  List<BottomNavigationBarItem> listItem = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Home"),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.list_dash),
      label: "List",
    ),
  ];

  List<Widget> listPages = [const HomePage(), const DetailPage()];

  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: listPages[activePage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activePage,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white54,
        elevation: 0,
        onTap: (index) {
          setState(() {
            activePage = index;
          });
        },
        items: listItem,
      ),
    );
  }
}
