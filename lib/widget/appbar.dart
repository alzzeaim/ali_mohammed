import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

AppBar myAppBar({
  required String tilte,
  String? textBack,
  required VoidCallback backPage,
}) {
  return AppBar(
    leading: SizedBox(),
    title: Text(tilte, textAlign: TextAlign.center, style: MyTextStyle.style26),
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
