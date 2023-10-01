import 'package:flutter/material.dart';

class ItmeType3New extends StatelessWidget {
  String decItme;
  int numItme;
  // IconData iconsItme;
  String URL3;
  VoidCallback nextPage;
  ItmeType3New({
    super.key,
    // required this.iconsItme,
    // required this.titleItme,
    required this.numItme,
    required this.URL3,
    required this.decItme,
    required this.nextPage,
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
            child: Container(
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
                      style: TextStyle(
                        color: Colors.white,
                      ),
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
                const Text(
                  "سلسلة",
                  style: TextStyle(
                    color: Color.fromRGBO(148, 133, 74, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
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
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
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
                          " مشاهدة",
                          style: TextStyle(
                            color: Colors.white,
                            // color: Color.fromRGBO(148, 133, 74, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
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
