import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PictureCarousel());
}

class PictureCarousel extends StatelessWidget {
  PictureCarousel({super.key});

  final _imagePaths = [
    'assets/images/chess1.jpg',
    'assets/images/chess2.jpg',
    'assets/images/chess3.jpg',
    'assets/images/chess4.jpg',
    'assets/images/chess5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: CarouselSlider(
            options: CarouselOptions(autoPlay: true),
            items: _imagePaths.map((imagePath) {
              return Builder(builder: (context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.all(4.0),
                    child: Image.asset(imagePath));
              });
            }).toList(),
          ),
        ),
      ),
    );
  }
}
