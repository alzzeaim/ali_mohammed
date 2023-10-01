import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Fatwas_file/Recently_added_Fatwas.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_actions.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_title.dart';
import 'package:flutter_alli_mohammed_hassan/widget/tabbarPage.dart';

import 'Fatwas.dart';
import '../../screen/homePage.dart';

class FatwasPage extends StatefulWidget {
  const FatwasPage({super.key});

  @override
  State<FatwasPage> createState() => _FatwasPageState();
}

class _FatwasPageState extends State<FatwasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: AppBarTitle(titel: "الفتاوى"),
        actions: [
          AppBarActions(backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          })
        ],
      ),
      // body: SafeArea(child: Text("Fatwas_page")),
      body: TabBarPage(
        tap11: "المضاف مؤاخراً",
        tap22: "الفتاوى",
        page1: RecentlyAddedFatwas(),
        page2: Fatwas(),
      ),
    );
  }
}