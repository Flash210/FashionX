import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:proj1/commun_widget/sized_box.dart';
import 'package:proj1/constants/strings_text.dart';
import 'package:proj1/screens/GridItems/product_images_slider.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xFFD4ECF7),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Stack(
                children: [
                  const Center(
                    child: ProductImageSlider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 25,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const CustomSizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    productName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const CustomSizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 25,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (value) {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const CustomSizedBox(height: 15),
                  const Row(
                    children: [
                      Text(productPrice,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22)),
                      SizedBox(width: 10),
                      Text(
                        productOldPrice,
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.red),
                      )
                    ],
                  ),
                  const CustomSizedBox(height: 10),
                  const Text(
                    productDesc,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        )),
        bottomNavigationBar: Container(
          height: 70,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.redAccent,
                ),
                child: const Center(
                  child: Text(
                    addToCart,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFD4ECF7),
                ),
                child: const Center(
                    child: Icon(
                  Icons.favorite_outline,
                  color: Colors.red,
                  size: 30,
                )),
              ),
            ),
          ]),
        ));
  }
}
