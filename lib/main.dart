import 'package:flutter/material.dart';
import 'package:lab2/files/third_page.dart';
import 'package:lab2/second_page.dart';
import 'package:lab2/test.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/mainPage',
    routes: {
      '/mainPage' : (context)=>FirstScreen(),
      '/SecondPage' :(context)=>SecondPage(),
      '/ThirdPage' : (context)=>ThirdPage(),

    },

  ));
}

