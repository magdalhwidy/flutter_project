import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/utils/global_colors.dart';
import '../info_screen/transaction_screen.dart';
import 'daily_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex =0;

  List<Widget> pages =[
    DailyScreen(),
    TransnactionScreen(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
      bottomNavigationBar: getFooter(),
      floatingActionButton: SafeArea(
        child: SizedBox(
          width: 50,
          height: 50,

          child: FloatingActionButton(
            backgroundColor: GlobalColors.mainColor,

          onPressed: (){},
          child: Icon(Icons.add, size: 20,),
        ),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
Widget getBody(){
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
}
  Widget getFooter(){
    List<IconData> iconItems = [
      CupertinoIcons.home,
      CupertinoIcons.creditcard,
      CupertinoIcons.money_dollar,
      CupertinoIcons.person,
    ];
    return AnimatedBottomNavigationBar(
        onTap: (index){setTabs(index);},
        backgroundColor: Color(0XFFeaeaea),
        icons: iconItems,
      splashColor: GlobalColors.mainColor,
      inactiveColor: Colors.black.withOpacity(0.5),
      gapLocation: GapLocation.center,
      activeIndex: pageIndex,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 10,
      iconSize: 25,
      rightCornerRadius: 10,
      elevation: 2,
    );
  }
  setTabs(index){
    setState(() {
      pageIndex = index;
    });
  }
}
