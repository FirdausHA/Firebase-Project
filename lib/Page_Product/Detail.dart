import 'package:flutter/material.dart';
import 'package:project_firebase/Model/Product.dart';
import 'package:project_firebase/Screen/Bottom_Navbar.dart';


class Detail extends StatefulWidget {
  const Detail({Key? key, required this.watch}) : super(key: key);
  final Watch watch;

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int quantity = 1;
  bool cart = false;
  Widget buildDetailText({required title, required subTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: "customFont",
            color: Color(0xfff0deba),
          ),
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontFamily: "customFont",
            fontSize: 30,
            color: Color(0xfff0deba),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SafeArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Color(0xffffda9c),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (con) => Bottom(),
                                  ),
                                );
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      buildDetailText(
                                        title: "BRAND",
                                        subTitle: "BHILFIGERR",
                                      ),
                                      buildDetailText(
                                        title: "STRAP",
                                        subTitle: "SILICONE",
                                      ),
                                      buildDetailText(
                                        title: "COLOR",
                                        subTitle: "ROSE GOLD",
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topRight,
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xfffdd691),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        widget.watch.image,
                        scale: 1.75,
                      ),
                      RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "TOMMY HILFIGER",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffebbb71),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TRENDING PRODUCTS",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "customFont",
                          letterSpacing: 7,
                        ),
                      ),
                      Text(
                        "PRICE",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "customFont",
                          letterSpacing: 7,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.watch.subtitle.toString(),
                        style: const TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "customFont",
                        ),
                      ),
                      Text(
                        widget.watch.price.toString(),
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xffffda9c),
                          fontWeight: FontWeight.bold,
                          fontFamily: "customFont",
                          letterSpacing: 7,
                        ),
                      )
                    ],
                  ),
                  Text(
                    widget.watch.description,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: MaterialButton(
                          onPressed: () {},
                          height: 50,
                          color: Color(0xfffdd691),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "ADD TO CART",
                            style: TextStyle(
                              letterSpacing: 1,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff303136),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Color(0xffffad390),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  cart = !cart;
                                });
                              },
                              icon: Icon(
                                cart
                                    ? Icons.shopping_cart
                                    : Icons.add_shopping_cart,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
