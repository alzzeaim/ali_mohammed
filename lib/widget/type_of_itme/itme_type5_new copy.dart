import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

class ItmeType5New2 extends StatelessWidget {
  String decItme;
  final URL3;
  VoidCallback nextPage;
  bool isNew;

  ItmeType5New2({
    super.key,
    required this.URL3,
    required this.decItme,
    required this.nextPage,
    required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppSize.z10,
        vertical: AppSize.z20,
      ),
    );
  }
}
