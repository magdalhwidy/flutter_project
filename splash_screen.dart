import 'package:flutter/material.dart';
import 'package:project/view/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'info_screen/info_page_1.dart';
import 'info_screen/info_page_2.dart';
import 'info_screen/info_page_3.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _controller = PageController();
  bool onLastPage =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [ PageView(
          controller: _controller,
          onPageChanged: (index){
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
            InfoPage1(),
            InfoPage2(),
            InfoPage3()
          ],

        ),
          Container(

              alignment: const Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap:(){
                      _controller.jumpToPage(2);
                    },

                    child: const Text('skip'),
                  ),

                  SmoothPageIndicator(controller: _controller, count:3,),
                  onLastPage?
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context){

                          return LoginScreen();
                        },),);
                    },
                    child: const Text('done'),
                  )
                      :GestureDetector(
                    onTap:() {
                      _controller.nextPage(

                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    },
                    child: const Text('next'),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
