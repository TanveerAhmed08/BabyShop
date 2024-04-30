// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unnecessary_import, file_names

import 'package:baby_hub/screens/user_panel/main-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => mainScreen()));
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xff4c53a5),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Cart",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4c53a5)),
            ),
          ),
          Spacer(),
          Icon(Icons.more_vert,
          size: 30,
          color: Color(0xff4c53a5),
          )

        ],
      ),
    );
  }
}
