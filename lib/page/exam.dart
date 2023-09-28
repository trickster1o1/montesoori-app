
import 'package:flutter/material.dart';

class Exam extends StatefulWidget {
  const Exam({super.key});

  @override
  State<Exam> createState() => _ExamState();
}

class _ExamState extends State<Exam> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exam'),),
      body: Column(
        children: [
          Center(child: Text('Routine', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),),),
          CustomCol('Nepali', '5th Kartik',context),
          CustomCol('English', '6th Kartik',context),
          CustomCol('Drawing', '7th Kartik',context),
          CustomCol('Math', '8th Kartik',context),
          ],
      ),
    );
  }
}

Container CustomCol(text, price, context) {
  return Container(
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
        border: Border(
      bottom: BorderSide(
        width: 1.0,
      ),
    )),
    child: Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Text(text)),
        Text(price),
      ],
    ),
  );
}
