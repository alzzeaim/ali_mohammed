import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/screen/homePage.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
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
      body: Center(
        child: body[currentIndex],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(AppPadding.p15),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            fixedColor: Colors.blue,
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.black,

            // fixedColor: Colors.amber,
            // useLegacyColorScheme: true,
            // selectedItemColor: Colors.red,
            // backgroundColor: Colors.amber,
            // unselectedItemColor: Colors.teal,
            currentIndex: currentIndex,
            onTap: (int newIndex) {
              
              setState(() {
                currentIndex = newIndex;

                
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.file_download_outlined,
                    color: Colors.grey,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings_outlined,
                    color: Colors.grey,
                  ),
                  label: ""),
            ],
          ),
        ),
      ),
    );
  }
}
