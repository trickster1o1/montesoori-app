import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'At Kids Montessori, we are dedicated to providing a nurturing and enriching educational environment for children, Our approach centers on the belief that each child is a unique, capable individual with an innate desire to explore, learn, and grow. We\'ve created a carefully prepared environment where children can flourish through self-directed exploration and hands-on learning.In our mixed-age classrooms, children are given the freedom to choose activities that align with their interests and developmental stages. Our teachers serve as guides, offering support and encouragement as children embark on their educational journeys. We believe that children learn best when they are actively engaged.',
            style: TextStyle(
              fontSize: 18.0,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
