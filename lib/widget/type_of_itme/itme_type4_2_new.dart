import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

class ItmeType4_2New extends StatelessWidget {
  String decItme;
  final URL3;
  VoidCallback nextPage;
  bool isNew;
  ItmeType4_2New({
    super.key,
    required this.URL3,
    required this.decItme,
    required this.nextPage,
    required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      width: double.infinity,
      height: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(URL3),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              border: Border.all(
                color: const Color.fromRGBO(148, 133, 74, 1),
                width: 2,
              ),
            ),
            child: Column(
              children: [
                if (isNew)
                  Container(
                    // width: 20,
                    // height: 20,
                    margin: EdgeInsets.only(
                      left: 10,
                      top: 10,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:  Text(
                      MyText.textGeneral,
                      style: MyTextStyle.style25
                      
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              decItme,
              style:MyTextStyle.style24,
              textAlign: TextAlign.right,
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          GestureDetector(
            onTap: () {
              nextPage();
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                left: 5,
                right: 10,
                top: 5,
                bottom: 5,
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(148, 133, 74, 1),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Row(
                  children: [
                    Icon(
                      Icons.chevron_left_rounded,
                      color: Colors.white,
                    ),
                    Text(
                      MyText.textGenera5,
                      style: MyTextStyle.style21,
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
