import 'package:flutter/material.dart';
import 'package:proj1/commun_widget/sized_box.dart';
import 'package:proj1/screens/ItemScreen/item_screen.dart';

class GridItems extends StatelessWidget {
  GridItems({super.key});

  var pNames = [
    "Apple Watch ",
    "Nike Shoe",
    "Headphone",
    "White Tshirt",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pNames.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        return Container(
          child: InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26, blurRadius: 4, spreadRadius: 2)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "30% OFF",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                          )
                        ],
                      ),
                      
                      const CustomSizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ItemScreen()
                            ));},
                          child: Image.asset(
                            "assets/images/${pNames[index]}.png",
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      const CustomSizedBox(height: 5),
                      Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                pNames[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black.withOpacity(0.8)),
                              ),
                              // SizedBox(height: 10),
        
                              Row(
                                children: [
                                  const Text(
                                    "\$100",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w500),
                                  ),
                                
                                  const CustomSizedBox(width: 5 ),
                                  Text(
                                    "\$130",
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.4),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              )),
        );
      },
    );
  }
}
