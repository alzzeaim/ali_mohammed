import 'package:flutter/material.dart';

class ItmeType4 extends StatelessWidget {
  String decItme;
  String URL3;
  VoidCallback nextPage;
  ItmeType4({
    super.key,
    required this.URL3,
    required this.decItme,
    required this.nextPage,
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
                      " المزيد",
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
          ),
        ],
      ),
    );
  }
}
