import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';

class SliderImages extends StatelessWidget {
  final URL;
   SliderImages({
    super.key,required this.URL,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(
        vertical: AppMargin.m20,
        horizontal: AppMargin.m10,
      ),
      width: AppSize.z348,
      height: AppSize.z200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppPadding.p20),
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
            borderRadius: BorderRadius.circular(AppPadding.p15)),
      ),
    );
  }
}
