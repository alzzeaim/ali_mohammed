import 'package:flutter/material.dart';



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
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Center(
        child: Text(
          titel,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
