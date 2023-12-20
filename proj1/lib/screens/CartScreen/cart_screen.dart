import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj1/commun_widget/sized_box.dart';
import 'package:proj1/constants/colors.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  var pSizes = ["36", "M", "S", "40"];
  var pNames = [
    "Apple Watch ",
    "Nike Shoe",
    "Headphone",
    "White Tshirt",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            children: [
              const Align(
                  child: Text("My Cart",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
              const CustomSizedBox(height: 40),
              Column(
                children: [
                  for (int i = 0; i < 4; i++)
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                     // padding: EdgeInsets.only(right: 5),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 248, 248, 248)),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 4,
                            margin: const EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kWhiteColor,
                            ),
                            child: Image.asset(
                              "assets/images/${pNames[i]}.png",
                              height: 70,
                              width: 70,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 20, bottom: 25),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(pNames[i],
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  RichText(
                                      text: TextSpan(children: [
                                    const TextSpan(
                                        text: "Size: ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: pSizes[i],
                                        style: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ])),
                                  const Text(
                                    "\$50.55",
                                    style: TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //  CustomSizedBox(width: 8),
                          Container(
                            // margin: EdgeInsets.only(right: 10),
                            height: 35,
                            width: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: kWhiteColor),
                            child: const Row(
                              children: [
                                Icon(CupertinoIcons.minus),
                              ],
                            ),
                          ),
                          const Text(
                            " 1 ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),

                          Container(
                            // margin: EdgeInsets.only(right: 10),
                            height: 35,
                            width: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: kWhiteColor),
                            child: const Row(
                              children: [
                                Icon(CupertinoIcons.add),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                ],
              )
            ],
          )),
    );
  }
}
