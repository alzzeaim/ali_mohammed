 import 'package:flutter/material.dart';

Expanded buildTabBarView(
      {required TabController tabController,
      required Widget page1,
      required Widget page2}) {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: [
          page1,
          page2,
        ],
      ),
    );
  }