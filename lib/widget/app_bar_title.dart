import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';



AppBar myAppBar({String? title, String? image, required Null Function() backPage}) {
  return AppBar(
    title: title!.isNotEmpty ? Text(title) : Image.asset(image!),
  );
}

class AppBarTitle extends StatelessWidget {
  final titel;
  const AppBarTitle({super.key, required this.titel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        top: AppPadding.p15,
      ),
      child: Center(
        child: Text(
          titel,
          textAlign: TextAlign.center,
          style: MyTextStyle.style29,
          
        ),
      ),
    );
  }
}
