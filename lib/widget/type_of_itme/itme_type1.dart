import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/widget/Video_series.dart';

class ItmeType1 extends StatelessWidget {
  // String titleItme;
  String decItme1;
  int numItme1;
  IconData iconsItme1;
  String URL1;
  VoidCallback nextPage;
  ItmeType1({
    super.key,
    required this.iconsItme1,
    // required this.titleItme,
    required this.numItme1,
    required this.URL1,
    required this.decItme1,
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
                      Text(
                        "سلسة",
                        style: TextStyle(
                          color: Color.fromRGBO(148, 133, 74, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        decItme1,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Row(
                        children: [
                          Icon(
                            iconsItme1,
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
                                child: Text(numItme1.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))),
                          ),
                        ],
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
                        image: AssetImage(URL1), fit: BoxFit.cover)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
