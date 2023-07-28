import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DailyScreen extends StatefulWidget {
  const DailyScreen({Key? key}) : super(key: key);

  @override
  State<DailyScreen> createState() => _DailyScreenState();
}

class _DailyScreenState extends State<DailyScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                 BoxShadow(
                   color: Colors.grey.withOpacity(0.03),
                   spreadRadius: 10,
                   blurRadius: 3,

                 )

                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 20,bottom: 25,right: 20,left: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.bar_chart),
                        Icon(Icons.more_vert),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage( image:AssetImage("assets/images/per.png"),
                            fit: BoxFit.cover)
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          width: (size.width-40)*0.6,
                          child: Column(
                            children: [
                              Text("Aseem Almajedy",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.7),

                              ),),
                              SizedBox(height: 5,),

                              Text("Personal wallet",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.7),

                                ),)
                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("\$8900",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFF57A0D3),
                            ),),

                            SizedBox(height: 5,),

                            Text("Income",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100,
                                  color: Colors.black.withOpacity(0.7),
                              ),)
                          ],
                        ),
                        Container(
                          width: 0.5,
                          height: 40,
                          color: Colors.black.withOpacity(0.3),
                        ),
                        Column(
                          children: [
                            Text("\$5500",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF57A0D3),
                              ),),

                            SizedBox(height: 5,),

                            Text("Expenses",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100,
                                  color:Colors.black.withOpacity(0.7),
                              ),)
                          ],
                        ),
                        Container(
                          width: 0.5,
                          height: 40,
                          color: Colors.black.withOpacity(0.3),
                        ),
                        Column(
                          children: [
                            Text("\$8900",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF57A0D3),
                              ),),

                            SizedBox(height: 5,),

                            Text("loan",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100,
                                  color: Colors.black.withOpacity(0.7),
                              ),)
                          ],
                        ),
                      ],
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.only(left: 25,right: 25,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text("Overview",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF57A0D3),
                        ),
                        ),


                      ],
                    )
                  ],
                ),
                Text("June 06, 2023",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFF57A0D3),
                ),)
              ],
            ),
            ),

            SizedBox(height: 5,),
            Padding(padding: EdgeInsets.all(8),
            child: Column(children: [
              Row(
                children: [
                  Expanded(child: Container(
                    margin: EdgeInsets.only(top: 20,left: 25,right: 25),
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
                        top: 10,left: 20,right: 20,bottom: 10,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0XFFeaeaea),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Icon(Icons.arrow_upward_rounded,color: Color(0XFF57A0D3),),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Expanded(child: Container(
                            width: (size.width-90)* 0.7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sent",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                                ),
                                SizedBox(width: 5,),
                                Text("Sending payment to Clients",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),

                          )),
                          Expanded(child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                              Text("\$366",
                              style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                              color: Colors.red,
                            ),)
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ))
                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Expanded(child: Container(
                    margin: EdgeInsets.only(top: 10,left: 25,right: 25),
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
                      padding: EdgeInsets.only(top: 10,bottom: 10,right: 20,left: 20),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0XFFeaeaea),
                              borderRadius: BorderRadius.circular(15),

                            ),
                            child: Center(
                              child: Icon(Icons.arrow_downward_rounded,color: Color(0XFF57A0D3),),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Expanded(child: Container(
                            width: (size.width-90)*0.7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Receive",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),),
                                SizedBox(height: 5,),
                                Text("Receive payment from company",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(0.5),
                                  ),),
                              ],
                            ),
                          )),
                          Expanded(child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "\$250",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green,
                                  ),)
                              ],
                            ),
                          )),
                        ],
                      ),
                    ),
                  ))
                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Expanded(child: Container(
                    margin: EdgeInsets.only(
                      top:10,
                      left: 25,
                      right: 25,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withOpacity(0.03),
                          spreadRadius: 10,
                          blurRadius: 3,

                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top:10 ,
                        bottom: 10,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0XFFeaeaea),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(child: Icon(CupertinoIcons.money_dollar,color: Color(0XFF57A0D3),),),
                        ),
                        SizedBox(width: 15,),
                        Expanded(child: Container(

                          width: (size.width - 90) * 0.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Loan",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                              SizedBox(height: 5),
                              Text("Loan for the card",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.w400,

                                ),
                              ),
                            ],
                          ),
                        )),
                        Expanded(child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "\$400",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red,
                                ),)
                            ],
                          ),
                        )),
                      ],
                      ),

                    ),
                  ))
                ],
              ),
            ],),
            )
          ],
        ),
      ),
    );
  }
}
