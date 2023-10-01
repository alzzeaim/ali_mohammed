import 'package:flutter/material.dart';

import '../screen/homePage.dart';

class AppBarActions extends StatelessWidget {
  VoidCallback backPage;
  AppBarActions({super.key, required this.backPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        backPage();
        
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: 15,
          top: 15,
        ),
        child: Row(
          children: [
            Text(
              "رجوع",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
