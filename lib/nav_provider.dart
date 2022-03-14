import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled5/Settings.dart';
import 'package:untitled5/home.dart';
import 'package:untitled5/person.dart';

class NavProvider extends StateNotifier<Widget>{
  NavProvider() : super(Home());

  static int index = 0;
  onChange(int i){
    index=i;
    if(i==0) state=Home();
    if(i==1) state=Person();
    if(i==2) state=Settings();
  }
}

final navProvider = StateNotifierProvider<NavProvider,Widget>((ref)=>NavProvider());