import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  const Noti({super.key});

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notice'),
      ),
      body: Column(
        children: [
          CustomCol('Exam', '27th Kartik', context),
          CustomCol('Parents Meeting', '10th Mangsir', context),
          CustomCol('ECA', '20th Kartik', context),
          CustomCol('Exibition', '21st Kartik', context),
          CustomCol('Parents Day', '21st Push', context),
          CustomCol('Cultural Program', '30th Push', context),
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
            width: MediaQuery.of(context).size.width * 0.7, child: Text(text)),
        Text(price),
      ],
    ),
  );
}
