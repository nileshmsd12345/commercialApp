

import 'package:flutter/material.dart';

import '../itemContainer.dart';

class BackScreen extends StatefulWidget {
  @override
  _BackScreenState createState() => _BackScreenState();
}

class _BackScreenState extends State<BackScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Container(
          child: Column(
            children: [
              SizedBox(height: 210.0),
              Container(
                child: Center(child: Text("Item Lists", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold,color: Colors.black),)),
              ),
              Container(
                color: Colors.white10,
                height: 350.0,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                   Center(
                     child: ItemContainer(text: "Dove Soap", image: 'assets/images/soap.jpeg',),
                   ),
                    SizedBox(height: 20.0,),
                    Center(
                      child: ItemContainer(text: "ParaChute Oil",image: 'assets/images/oil.jpeg'),
                    ),
                    SizedBox(height: 20.0,),
                    Center(
                      child: ItemContainer(text: "Colgate Toothpaste",image: 'assets/images/colgate.jpeg'),
                    ),
                    SizedBox(height: 20.0,),
                    Center(
                      child: ItemContainer(text: "Neem Facewash",image: 'assets/images/neem.jpeg'),
                    ),
                    SizedBox(height: 20.0,),
                    Center(
                      child: ItemContainer(text: "Sunscreen",image: 'assets/images/sun.jpeg'),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45.0),
              bottomRight: Radius.circular(45.0),
            ),
            color: Colors.red,
          ),
          child: Column(

            children: [
              SizedBox(height: 140.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
               Text("Monthly", style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold,color: Colors.white),),
                Text("12", style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold,color: Colors.white),),
                Text("1200", style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold,color: Colors.white),),

              ],),
              SizedBox(height: 8.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Current List", style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.w300,color: Colors.white),),
                  Text("Total items", style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.w300,color: Colors.white),),
                  Text("Total cost", style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.w300,color: Colors.white),),

                ],)
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 130.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45.0),
                bottomRight: Radius.circular(45.0),
              ),
              color: Color(0xff0D72A0)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //SizedBox(width:5.0),
                      Icon(
                        Icons.menu_outlined,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.notifications_active_outlined,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      //SizedBox(width: 5.0,),
                    ],
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 30.0),
                    Icon(
                      Icons.arrow_back_ios,
                      size: 20.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          color: Colors.white,
                        ),
                        height: 30.0,
                        width: 200.0,
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
                    )
                  ],
                ),
              ],
            ),
          ),
        ),

      ],
    ));
  }
}

