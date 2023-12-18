import 'package:flutter/material.dart';
import 'package:proj1/commun_widget/sized_box.dart';
import 'package:proj1/constants/images_path.dart';
import 'package:proj1/constants/strings_text.dart';
import 'package:proj1/screens/HomeScreen/CustomWidget/grid_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> clrs =const [
      Color.fromARGB(255, 246, 111, 58),
      Color.fromARGB(255, 36, 131, 233),
      Color.fromARGB(255, 63, 208, 143),
    ];

    var imageList = [slide1,slide3,slide4
    ];

    var iconImagesList = [icon1,icon2,icon3,icon4,icon5,icon6,icon7];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xFFD4ECF7),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            spreadRadius: 2)
                      ]),
                  child: const Icon(Icons.shopping_cart_outlined),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xFFD4ECF7),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            spreadRadius: 2)
                      ]),
                  child: const Icon(Icons.search),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(homeHello,
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text(
                  homeFind,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 15),
            child: Row(children: [
              for (var i = 0; i < clrs.length; i++)
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(left: 10),
                  height: MediaQuery.of(context).size.height / 5.5,
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: clrs[i]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                          homePromo,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Container(
                              width: 90,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text(
                                  shopNow,
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ],
                      )),
                      Image.asset(
                        imageList[i],
                        height: 180,
                        width: 110,
                      )
                    ],
                  ),
                )
            ]),
          ),
          
          const CustomSizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  homeCategories,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  homeSee,
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          
          const CustomSizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 10),
            child: Row(children: [
              for (var i = 0; i < 7; i++)
                Container(
                  height: 50,
                  width: 50,
                  
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                  color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            spreadRadius: 2)
                      ]),

                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Image.asset(iconImagesList[i]),
                  ),
                )
            ]),
          ),
          const CustomSizedBox(height: 10),
          GridItems()


        ],
      ),
    );
  }
}
