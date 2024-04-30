// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, camel_case_types, file_names

import 'package:flutter/material.dart';

class itemAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
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
              "Products",
              style: TextStyle(
                  color: Color(0xff4c53a5),
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Icon(
            Icons.favorite,
            size: 30,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
