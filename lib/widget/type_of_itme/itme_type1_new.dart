import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

class ItmeType1New extends StatelessWidget {
  // String titleItme;
  String decItme;
  int numItme;
  IconData iconsItme;
  final URL2;
  VoidCallback nextPage;
  bool isNew;
  ItmeType1New({
    super.key,
    required this.iconsItme,
    // required this.titleItme,
    required this.numItme,
    required this.URL2,
    required this.decItme,
    required this.nextPage,
    required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        nextPage();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (isNew)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(MyText.textGeneral,
                                  style: MyTextStyle.style17),
                            ),
                          Text(MyText.textGenera2, style: MyTextStyle.style18),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        decItme,
                        style: MyTextStyle.style19,
                        textAlign: TextAlign.right,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Icon(
                              iconsItme,
                              color: Color.fromRGBO(148, 133, 74, 1),
                              size: 30,
                            ),
                            const SizedBox(
                              width: 90,
                            ),
                            const Text(
                              MyText.textGenera3,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(148, 133, 74, 1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  numItme.toString(),
                                  style:MyTextStyle.style20
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 130,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromRGBO(148, 133, 74, 1), width: 2),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(URL2), fit: BoxFit.cover)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
