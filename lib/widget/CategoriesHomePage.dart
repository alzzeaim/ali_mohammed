import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CategoriesHomePage extends StatelessWidget {
  IconData iconn;
  final name_cato;
  double? wi;
  VoidCallback newPage;
  CategoriesHomePage(
      {super.key,
      required this.iconn,
      required this.name_cato,
      this.wi = 110,
      required this.newPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        newPage();
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 15,
          right: 0,
          top: 15,
          bottom: 0,
        ),
        width: wi,
        height: 124,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconn,
              color: Color.fromRGBO(148, 137, 74, 1),
              size: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name_cato,
              style: const TextStyle(
                  color: Color.fromRGBO(
                    119,
                    119,
                    119,
                    1,
                  ),
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
