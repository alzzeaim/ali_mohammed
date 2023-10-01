import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/widget/Video_series.dart';

class ItmeType1New extends StatelessWidget {
  // String titleItme;
  String decItme;
  int numItme;
  IconData iconsItme;
  String URL2;
  VoidCallback nextPage;
  ItmeType1New({
    super.key,
    required this.iconsItme,
    // required this.titleItme,
    required this.numItme,
    required this.URL2,
    required this.decItme,
    required this.nextPage,
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
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Text(
                              "NEW",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Text(
                            "سلسة",
                            style: TextStyle(
                              color: Color.fromRGBO(148, 133, 74, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        decItme,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
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
                              "محتوى",
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
                                  child: Text(numItme.toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                      ))),
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
