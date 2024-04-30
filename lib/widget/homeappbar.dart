// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, camel_case_types, no_leading_underscores_for_local_identifiers, empty_statements, unnecessary_import
import 'package:baby_hub/screens/auth_ui/sign_in.dart';
import 'package:baby_hub/screens/auth_ui/welcome.dart';
import 'package:baby_hub/screens/user_panel/cartpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => welCome()));
            },
            child: Icon(
              Icons.logout_outlined,
              size: 30,
              color: Color(0xff4c53a5),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Baby Hub",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4c53a5)),
            ),
          ),
          Spacer(),
          Badge(
            padding: EdgeInsets.all(7),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Color(0xff4c53a5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
