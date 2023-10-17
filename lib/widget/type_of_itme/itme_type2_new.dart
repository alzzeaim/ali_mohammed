import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

class ItmeType2New extends StatelessWidget {
  VoidCallback nextPage;
  String title;
  bool isNew;
  ItmeType2New({
    super.key,
    required this.title,
    required this.nextPage,
    required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isNew)
                Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    MyText.textGeneral,
                    style: MyTextStyle.style17,
                  ),
                ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  nextPage();
                },
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 10,
                    top: 5,
                    bottom: 5,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(148, 133, 74, 1),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chevron_left_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        MyText.textGenera4,
                        style: MyTextStyle.style21,
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title,
                    textAlign: TextAlign.right, style: MyTextStyle.style22),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.insert_drive_file_outlined,
              size: 24,
              color: Color.fromRGBO(148, 137, 74, 1),
            ),
          )
        ],
      ),
    );
  }
}
