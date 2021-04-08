import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../myContainer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 320.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45.0),
                bottomRight: Radius.circular(45.0),
              ),
              color: Color(0xff0D72A0)),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu_outlined,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.notifications_active_outlined,
                        size: 30.0,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                color: Colors.white,
                height: 40.0,
                width: 100.0,
                child: Center(
                    child: Text(
                      "USTOGET",
                      style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.red),
                    )),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.white,
                ),
                height: 30.0,
                width: 250.0,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        size: 25.0,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                height: 40.0,
                width: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Color(0xffE33B3B),
                ),
                child: Center(
                    child: Text(
                      "Create New List",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    )),
              )
            ],
          ),
        ),
        Container(
          color: Colors.white10,
          height: 300.0,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Container(
                color: Colors.white10,
                child: Center(
                  child: Text(
                    "Previous Lists",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),),
              SizedBox(height: 10.0,),
              Center(
                child: MyContainer(text1: "Monthly List",text2: "Money Spent: \$ 3500" ),
              ),
              SizedBox(height: 15.0,),
              Center(
                child: MyContainer(text1: "Occasion List",text2: "Money Spent: \$ 1500"),
              ),
              SizedBox(height: 15.0,),
              Center(
                child: MyContainer(text1:"Daily List",text2: "Money Spent: \$ 2000"),
              ),
              SizedBox(height: 15.0,),


            ],
          ),
        ),
      ],
    );
  }
}

