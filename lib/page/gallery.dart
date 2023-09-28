import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: NetworkImage('https://www.countrymontessori.org/wp-content/uploads/2018/04/joys-of-pre-school.jpeg')),
            SizedBox(height: 15.0,),
            Image(image: NetworkImage('https://www.countrymontessori.org/wp-content/uploads/2018/04/joys-of-pre-school.jpeg')),
            SizedBox(height: 15.0,),
            Image(image: NetworkImage('https://www.countrymontessori.org/wp-content/uploads/2018/04/joys-of-pre-school.jpeg')),
            SizedBox(height: 15.0,),
            Image(image: NetworkImage('https://www.countrymontessori.org/wp-content/uploads/2018/04/joys-of-pre-school.jpeg')),
            SizedBox(height: 15.0,),
            Image(image: NetworkImage('https://www.countrymontessori.org/wp-content/uploads/2018/04/joys-of-pre-school.jpeg')),
            SizedBox(height: 15.0,),
            
          ],
        ),
      ),
    );
  }
}
