// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class categoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1;i < 11;i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(),
                  child: Image.asset(
                    'assets/images/$i.png',
                    height: 150,
                    width: 150,
                  ),
                ),
                // Text(
                //   'Cloths',
                //   style: TextStyle(
                //       color:Color(0xff4c53a5),
                //       fontSize: 17,
                //       fontWeight: FontWeight.bold),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
