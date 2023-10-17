import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

class ItmeType3New extends StatelessWidget {
  String decItme;
  int numItme;
  // IconData iconsItme;
  final URL3;
  VoidCallback nextPage;
  bool isNew;
  ItmeType3New({
    super.key,
    // required this.iconsItme,
    // required this.titleItme,
    required this.numItme,
    required this.URL3,
    required this.decItme,
    required this.nextPage,
    required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: 191.5,
      height: 288,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: 191.5,
            height: 140,
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
                if(isNew)
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
                    style:MyTextStyle.style17,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(148, 133, 74, 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      numItme.toString(),
                      style: MyTextStyle.style20
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.menu_book_rounded,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
                const SizedBox(
                  width: 75,
                ),
                 Text(
                  MyText.textGenera2,
                  style: MyTextStyle.style18
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              decItme,
              style: MyTextStyle.style23,
              textAlign: TextAlign.right,
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  nextPage();
                },
                child: Container(
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
                  child: Center(
                    child: Row(
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
