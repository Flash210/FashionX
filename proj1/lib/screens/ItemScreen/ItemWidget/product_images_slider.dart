import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorBackgroundColor: Colors.white,
      isLoop: false,
      indicatorColor: Colors.redAccent,
      autoPlayInterval: 1000,
      indicatorRadius: 4,
      height: 300,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset("assets/images/p2.png"),
        ),

           Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset("assets/images/p1.png"),
        ),
      ],
    );
  }
}
