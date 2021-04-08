import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class ItemContainer extends StatelessWidget {
  ItemContainer({@required this.text, @required this.image});
  String text;
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 300.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 3.0,
            spreadRadius: 0.2,
            offset: Offset(0.5, 0.8), // shadow direction: bottom right
          ),
        ],
      ),
      child: Row(
        children: [
          Container(child: Image.asset(image),),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 90.0,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width:20.0),
                    Text(
                      "Qty: 1 Pc  |  Price: \$ 15",
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(width:20.0),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: SvgPicture.asset("assets/minus.svg"),

                    ),
                    Text("1",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Icon(
                        Icons.add_circle_outline_outlined,
                        color: Colors.greenAccent,
                      ),
                    ),

                  ],
                ),
              ],
            ),


          ),


        ],
      ),
    );
  }
}
