import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/screen/homePage.dart';

import '../constant/size.dart';
import '../widget/CategoriesHomePage.dart';

class RootAppScreen extends StatefulWidget {
  const RootAppScreen({super.key});

  @override
  State<RootAppScreen> createState() => _RootAppScreenState();
}

class _RootAppScreenState extends State<RootAppScreen> {
  int currentIndex = 0;
  List<Widget> body = const [
    HomePage(),
    // Icon(Icons.home_outlined),
    Icon(Icons.ac_unit_outlined),
    Icon(Icons.file_download_outlined),
    Icon(Icons.settings_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Center(
        child: body[currentIndex],
      ),
      
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(AppPadding.p15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppSize.z15),
          child: BottomNavigationBar(
            elevation: 0.0,
            selectedItemColor: MyColors.MyAction,
            unselectedItemColor: Colors.grey,
            backgroundColor: MyColors.whiteColor,
            currentIndex: currentIndex,
            onTap: (int newIndex) {
              setState(() {
                currentIndex = newIndex;
              });
            },
            items: List.generate(
              bootomBar.listItemBotoomBar.length,
              (index) => BottomNavigationBarItem(
                  icon: bootomBar.listItemBotoomBar[index]['icon'],
                  label: bootomBar.listItemBotoomBar[index]['label']),
            ),
          ),
        ),
      ),
    );
  }
}

class bootomBar {
  static List<Map<String, dynamic>> listItemBotoomBar = [
    {
      'icon': Icon(
        Icons.home_outlined,
      ),
      'label': ""
    },
    {
      'icon': Icon(
        Icons.search,
      ),
      'label': ""
    },
    {
      'icon': Icon(
        Icons.file_download_outlined,
      ),
      'label': ""
    },
    {
      'icon': Icon(
        Icons.settings_outlined,
      ),
      'label': ""
    },
  ];
}
