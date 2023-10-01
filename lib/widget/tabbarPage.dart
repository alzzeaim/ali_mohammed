import 'package:flutter/material.dart';



class TabBarPage extends StatefulWidget {
  String tap11;
  String tap22;
  Widget page1;
  Widget page2;
  TabBarPage({
    super.key,
    required this.tap11,
    required this.tap22,
    required this.page1,
    required this.page2,
  });

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 237, 232, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 20),
                Container(
                  // height: 50,
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 0,
                          vertical: 10,
                        ),
                        child: TabBar(
                          unselectedLabelColor:
                              Color.fromRGBO(102, 102, 102, 1),
                          labelColor: Colors.white,
                          indicatorColor: Colors.white,
                          dividerColor: Colors.white,
                          indicatorWeight: 0,
                          indicator: BoxDecoration(
                            color: Color.fromRGBO(148, 133, 74, 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          controller: tabController,
                          tabs: [
                            Tab(
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 15,
                                      ),
                                      //text1
                                      Text(
                                        widget.tap11,
                                        // style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.watch_later_outlined),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 25,
                                      ),
                                      //text2
                                      Text(widget.tap22),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.videocam_outlined,
                                        // color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      widget.page1,
                      widget.page2,
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
