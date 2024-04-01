import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Detay extends StatefulWidget {
  const Detay({super.key, required this.img});
  final String img;
  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background big picture
          Hero(
            tag: widget.img,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.img), fit: BoxFit.cover),
              ),
            ),
          ),
          // top box
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 230,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        //derss jpg
                        Container(
                          margin: EdgeInsets.all(16),
                          width: 100,
                          height: 120,
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/dress.jpg",
                                  ),
                                  fit: BoxFit.contain)),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // LAMINATED text
                            Text(
                              "LAMINATED",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            // Lousis Voitton text
                            Text(
                              "Louis Voitton",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            // paragraph
                            Container(
                              // color: Colors.orange,
                              height: 30,
                              width: MediaQuery.of(context).size.width / 1.7,
                              child: Text(
                                "One button v-neck sling long-sleeved waist female stictching dress ",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(
                      endIndent: 10,
                      indent: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // $6500 text
                          Text(
                            "\$6500",
                            style: TextStyle(
                                fontFamily: "Montserrat", fontSize: 22),
                          ),
                          // arrow  Icon button
                          Container(
                            padding: EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.brown,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: MediaQuery.of(context).size.width / 10,
            child: Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // LAMINATED text
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "LAMINATED",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                    // arrow forward Icon
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
