import 'package:flutter/material.dart';

class InfoPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(

        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                   Image.asset("assets/images/splash2.png",width: 315,),
              SizedBox(height: 25,),
              Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: [
                      Text("Transform Money",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                      SizedBox(height: 5,),
                      Text("Save money by saving the cost of middlemen, and transform to the other people easly",
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.7),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,

                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ))
            ]
        ),
      ),
    );
  }
}
