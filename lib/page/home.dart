import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      FlutterNativeSplash.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kids Montesori'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).width * .08, top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/assignment');
                      },
                      child: customCont(context, 'Assignment', false,
                          Icons.assignment, Colors.grey),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/noti');
                      },
                      child: customCont(context, 'Notice', true,
                          Icons.calendar_month_outlined, Colors.greenAccent),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/finance');
                      },
                      child: customCont(context, 'Finance', true, Icons.money,
                          Colors.lightGreenAccent),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/notices');
                      },
                      child: customCont(context, 'Attendence', false,
                          Icons.file_open, Colors.yellowAccent),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/exam');
                      },
                      child: customCont(
                          context, 'Exam', false, Icons.copy, Colors.brown),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/gallery');
                      },
                      child: customCont(context, 'Gallery', false,
                          Icons.photo_album, Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

Container customCont(context, text, right, ics, col) {
  return Container(
      margin: right == true
          ? const EdgeInsets.only(right: 5, bottom: 10)
          : const EdgeInsets.only(left: 5, bottom: 10),
      width: MediaQuery.sizeOf(context).width * .4,
      height: 200.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              ics,
              color: col,
              size: 100.0,
            ),
          ),
          Center(
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ));
}
