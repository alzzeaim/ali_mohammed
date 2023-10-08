import 'package:flutter/material.dart';

class ItmeType5New extends StatelessWidget {
  String decItme;
  final URL3;
  VoidCallback nextPage;
  bool isNew;

  ItmeType5New({
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
      height: 430,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: 270,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(URL3),
                fit: BoxFit.none,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              // border: Border.all(
              //   color: const Color.fromRGBO(148, 133, 74, 1),
              //   width: 2,
              // ),
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
                    child: const Text(
                      "جديد",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              decItme,
              style: TextStyle(
                // color: Color.fromRGBO(148, 133, 74, 1),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
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
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(5),
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(148, 133, 74, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_download_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        "تحميل",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
