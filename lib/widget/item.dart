// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:baby_hub/screens/user_panel/itempages.dart';
import 'package:flutter/material.dart';

class itemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 11; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color(0xff4c53a5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "-50%",
                        style: TextStyle(
                            fontSize: 12,
                            // fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ItemPage()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(2),
                    child: Image.asset(
                      "assets/images/$i.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                 ElevatedButton.icon(
                   label: Text("Buy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff4c53a5)),
                        padding:MaterialStateProperty.all (
                    EdgeInsets.symmetric(horizontal: 25, vertical: 10),)
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                 
                ),
                // Container(
                //   // padding: EdgeInsets.only(bottom: 1),

                //   alignment: Alignment.centerLeft,
                //   child: Text("",
                //   style: TextStyle(
                //     fontSize: 18,
                //     fontWeight: FontWeight.bold,
                //     color: Color(0xff4c53a5),
                //   ),),
                // ),
                //     Container(
                //       alignment: Alignment.centerLeft,
                //       child: Text("Write Description of produt",style:TextStyle(
                //         fontSize: 15,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.black, ),
                //     )
                // ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$55",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4c53a5)),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xff4c53a5),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
