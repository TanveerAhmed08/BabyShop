// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       "Total:",
            //       style: TextStyle(
            //           color: Color(0xff4c53a5),
            //           fontSize: 22,
            //           fontWeight: FontWeight.bold,
            //           ),
            //     ),
            //     Text(
            //       "\$250",
            //       style: TextStyle(
            //           color: Color(0xff4c53a5),
            //           fontSize: 22,
            //           fontWeight: FontWeight.bold,
            //           ),
            //     )
            //   ],
            // ),
            Container(alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 10),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xff4c53a5),
            borderRadius: BorderRadius.circular(20),),
            child: Text("Check Out",
            style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      ),
            ),
            )

          ],
        ),
      ),
    );
  }
}
