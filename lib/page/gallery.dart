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
            Image(
                image: NetworkImage(
                    'https://www.countrymontessori.org/wp-content/uploads/2018/04/joys-of-pre-school.jpeg')),
            SizedBox(
              height: 15.0,
            ),
            Image(
                image: NetworkImage(
                    'https://www.niche.com/blog/wp-content/uploads/2019/09/montessori-at-home-1200-1200x794.jpg')),
            SizedBox(
              height: 15.0,
            ),
            Image(
                image: NetworkImage(
                    'https://isteam.wsimg.com/ip/13298a87-a521-411e-af1e-acc66e153c23/Sia%20playing%20the%20bells.jpg')),
            SizedBox(
              height: 15.0,
            ),
            Image(
                image: NetworkImage(
                    'https://www.namontessori.com/wp-content/uploads/2022/07/pexels-pavel-danilyuk-8422207-scaled.jpg')),
            SizedBox(
              height: 15.0,
            ),
            Image(
                image: NetworkImage(
                    'https://qph.cf2.quoracdn.net/main-qimg-27b753a8184af8bc5b829db572383518-lq')),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
