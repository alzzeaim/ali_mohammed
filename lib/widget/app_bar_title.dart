import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final titel;
  const AppBarTitle({
    super.key,required this.titel
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Center(
        child: Text(
          titel,
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
