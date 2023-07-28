import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TransnactionScreen extends StatefulWidget {
  const TransnactionScreen({Key? key}) : super(key: key);

  @override
  State<TransnactionScreen> createState() => _TransnactionScreenState();
}

class _TransnactionScreenState extends State<TransnactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }
  Widget getBody() {
    var size = MediaQuery
        .of(context)
        .size;
    return SafeArea(child: SingleChildScrollView(child: Column(children: [
      Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.01),
                  spreadRadius: 10,
                  blurRadius: 3
              ),
            ]
        ),
        child: Padding(
          padding:
          EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(CupertinoIcons.back),
                  Icon(CupertinoIcons.search),

                ],
              )
            ],
          ),
        ),
      ),
      SizedBox(height: 5),
      Padding(padding: EdgeInsets.only(left: 25, right: 25, bottom: 20,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Racent Transection",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0XFF57A0D3),
              ),),
            Text("See all",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0XFF57A0D3),
              ),)
          ],
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 5, left: 25, bottom: 20, right: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 25,
                    right: 25,
                    top: 5,
                    bottom: 5,
                  ),
                  margin: EdgeInsets.symmetric(
                      horizontal: 5),
                  decoration: BoxDecoration(
                    color: Color(0XFF57A0D3),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(child: Text("All",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,

                    ),),),
                ),
                Container(
                    padding: EdgeInsets.only(
                      left: 25,
                      right: 25,
                      top: 5,
                      bottom: 5,),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.03),
                            spreadRadius: 10,
                            blurRadius: 3,

                          )
                        ]
                    ),
                    child: Center(child: Text("Expense",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(0.5),
                      ),))
                ),
                Container(
                    padding: EdgeInsets.only(
                      left: 25,
                      right: 25,
                      top: 5,
                      bottom: 5,),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.03),
                            spreadRadius: 10,
                            blurRadius: 3,

                          )
                        ]
                    ),
                    child: Center(child: Text("Income",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(0.5),
                      ),))
                ),
              ],
            )
          ],
        ),),
      Padding(padding: EdgeInsets.only(
        left: 25,
        right: 25,
        bottom: 20,
      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Today",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0XFF57A0D3),
              ),
            ),
          ],
        ),),
      Row(
        children: [
          Expanded(child: Container(
            margin: EdgeInsets.only(
              top: 10,
              left: 25,
              right: 25,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.03),
                    spreadRadius: 10,
                    blurRadius: 3,
                  )
                ]

            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 20,
                right: 20,
              ),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: Center(
                      child: Icon(
                        Icons.payment,
                        color: Color(0XFF57A0D3),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(child: Container(
                    width: (size.width-90)*0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Payment",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height: 5,),
                        Text("Payment from andrea",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.w400,

                          ),),


                      ],
                    ),
                  )),
                  Expanded(child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "\$30.00",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),)
                      ],
                    ),
                  )),
                ],
              ),
            ),
          )),

        ],
      ),

      Padding(padding: EdgeInsets.only(
        top: 20,
        bottom: 10,
        right: 20,
        left: 20,
      ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
                top: 5,
                bottom: 5,
              ),
             margin: EdgeInsets.symmetric(horizontal:0),
              child: Container(
                width: 325,
                height: 325,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/coin.png"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),),


    ],
    ),
    ),
    );
  }
}



