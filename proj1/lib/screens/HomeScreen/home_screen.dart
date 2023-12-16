



import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {


List<Color>  clrs=[
  Color.fromARGB(255, 246, 111, 58),
  Color.fromARGB(255, 36, 131, 233),
  Color.fromARGB(255, 63, 208, 143),

];

var imageList=[
  "assets/images/prom2.jpg",
    "assets/images/prom3.jpg",
  "assets/images/prom4.jpg",
  "assets/images/prom5.jpg",

];




    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(top: 40,left: 15,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFD4ECF7),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 2)
                  ]
                ),
                                child: Icon(Icons.shopping_cart_outlined),

              ),


                   Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFD4ECF7),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 2)
                  ]
                ),
                child: Icon(Icons.search),
              ),
            ],
          ),
        ),

        Padding(
          padding:EdgeInsets.symmetric(vertical: 25,horizontal: 15) ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello Dear",
              style:TextStyle
          (
            fontSize: 25,
            fontWeight: FontWeight.bold
          )
          ),
          SizedBox(height: 5),
          Text("Find Your Best Product",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey
          ),
          ),
          
            ],
          ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15),
            child: Row(children: [
              for(var i=0;i<clrs.length;i++)
              Container(
                margin: EdgeInsets.only(right: 10),
                padding:EdgeInsets.only(left:10),
                height: MediaQuery.of(context).size.height / 5.5,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: clrs[i]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "30% OFF Winter Collection", 
                            style: TextStyle(

                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
        
                          ),
                          Container(
                            width:90,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child:Center(
                              child: Text("Shop Now",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                            )
                            ),
                          

                        ],

                      )
                    
                    )
                  ],
                ),
              )
              
            ]),
                      )
        ],
      ),
    );
  }
}