import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/graph_view.dart';
import 'package:getxtutorial/history.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _currentTab = 0;
  void tabChanger(int) {
    setState(() {
      _currentTab = int;
    });
  }

  List<Widget> tabbarScreens = [
    GraphScreen(),
    HistoryScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   appBar: AppBar(
      //  title: Text("Kilonu Takip Et"),
      //      ),
      // body: GraphScreen(),
      body: tabbarScreens[_currentTab],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreenAccent[400],
        child: Icon(Icons.add),
        onPressed: null,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: AnimatedBottomNavigationBar(
          height: Get.height / 12,
          icons: [Icons.show_chart, Icons.history],
          iconSize: 30,
          gapLocation: GapLocation.center,
          activeColor: Colors.lightGreenAccent[400],
          inactiveColor: Colors.grey,
          backgroundColor: Colors.lime[50],
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          activeIndex: _currentTab,
          onTap: (int) {
            tabChanger(int);
            print(int);
          }),
    );
  }
}
