import 'package:flutter/material.dart';

class SliderImages extends StatelessWidget {
  String URL;
   SliderImages({
    super.key,required this.URL,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      width: 348,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image:  DecorationImage(
          image: AssetImage(URL),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.2),
              ],
            ),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
