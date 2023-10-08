import 'package:flutter/material.dart';

AppBar myAppBar({required String tilte,String? textBack,required VoidCallback backPage,}) {
  return AppBar(
    actions: [
      GestureDetector(
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
    ),
    ],
    

  );
}
