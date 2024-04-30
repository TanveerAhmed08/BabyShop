// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class keyboardutil{
  static void hideKeyboard(BuildContext context){
    FocusScopeNode currentFocus = FocusScope.of(context);

    if(!currentFocus.hasPrimaryFocus){
      currentFocus.unfocus();
    }
  }
}