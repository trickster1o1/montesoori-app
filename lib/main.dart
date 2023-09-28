import 'package:flutter/material.dart';
import 'package:school/page/assignment.dart';
import 'package:school/page/exam.dart';
import 'package:school/page/finance.dart';
import 'package:school/page/gallery.dart';
import 'package:school/page/home.dart';
import 'package:school/page/noti.dart';
import 'package:school/page/notice.dart';
void main()=> runApp(MaterialApp(initialRoute: '/', routes: {
  '/': (context) =>  MyHome(),
  '/notices': (context) =>  Notices(),
  '/noti': (context) =>  Noti(),
  '/assignment': (context) =>  Assignment(),
  '/finance': (context) =>  Fin(),
  '/exam': (context) =>  Exam(),
  '/gallery': (context) =>  Gallery(),
}));