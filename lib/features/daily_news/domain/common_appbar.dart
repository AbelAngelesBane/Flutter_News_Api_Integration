
import 'package:flutter/material.dart';

class CommonAppBar extends AppBar{
  CommonAppBar(this.appBarTitle,{Key? key})
  : super(
    title: Text(appBarTitle),
    centerTitle: true
  );
  
  final String appBarTitle;
}