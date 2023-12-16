


import 'package:flutter/material.dart';


class GridItems extends StatelessWidget {
   GridItems({super.key});

var pNames=[
"assets/images/Apple Watch -M2.png",
"assets/images/Nike Shoe.png",
"assets/images/Ear Headphone.png",
"assets/images/White Tshirt.png",




];


  @override
  Widget build(BuildContext context) {
    return  GridView.builder(

itemCount: pNames.length,
physics: NeverScrollableScrollPhysics(
),
shrinkWrap: true,
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,
  childAspectRatio: 0.7,
),

itemBuilder: (context, index)  {
  return InkWell(
     onTap: () {},
     child: Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            spreadRadius: 2
          )
        ]
      ),

      child: Padding(padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("30% OFF",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12
              ),
              ),
              Icon(
                Icons.favorite,color: Colors.redAccent,
              )
            ],
          ),

          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(10),
           child: Image.asset(
              pNames[index],
              height:100 ,
              width: 100,

            ),
            )
        ],
      ),
      
     ),


  ));
},
    );
  }
}