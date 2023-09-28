import 'package:flutter/material.dart';

class Fin extends StatefulWidget {
  const Fin({super.key});

  @override
  State<Fin> createState() => _FinState();
}

class _FinState extends State<Fin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finance'),
      ),
      body: Column(
        children: [
          CustomCol('Monthly Fee', 'Rs.10,000',context),
          CustomCol('Exam Fee', 'Rs.1000',context),
          CustomCol('Tours & Travels', 'Rs.5000',context),
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
