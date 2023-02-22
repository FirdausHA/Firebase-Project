import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_firebase/Controller_Cart.dart';
import 'package:get/get.dart';
import 'package:project_firebase/Total_Cart.dart';

class CartItemSamples extends StatelessWidget{

  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: currentWidth > 600 ? 150 : 20,
        ), 
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 110,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xffffad390),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: [
                  Radio(
                    value: "",
                    groupValue: "",
                    activeColor: Colors.black,
                    onChanged: (index){},
                  ),
                  Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffa17f3c),
                    ),
                    margin: EdgeInsets.only(right: 15),
                    child: Image.asset("images/Gold_1.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "HUBLOT",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: "customFont",
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "\$ 345",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: "customFont",
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 65,
                  ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () => {
                                c.addWatch(),
                              },
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xff293f6e),
                                ),
                                child: Icon(Icons.add),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Obx(
                                  () => Text(
                                "${c.Watch.toString()}",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () => {
                                c.removeWatch(),
                              },
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xff293f6e),
                                ),
                                child: Icon(Icons.remove),
                              ),
                            ),
                          ],
                        ),
                      ],
                ),
              ),
            Container(
              height: 110,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffffad390),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(children: [
                Radio(
                  value: "",
                  groupValue: "",
                  activeColor: Colors.black,
                  onChanged: (index){},
                ),
                Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffa17f3c),
                  ),
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset("images/whitegold_1.png"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Big Bang",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "customFont",
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "\$ 350",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: "customFont",
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => {
                        c.addWatch1(),
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff293f6e),
                        ),
                        child: Icon(Icons.add),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Obx(
                          () => Text(
                        "${c.Watch1.toString()}",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => {
                        c.removeWatch1(),
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff293f6e),
                        ),
                        child: Icon(Icons.remove),
                      ),

                    ),
                  ],
                ),
              ],
              ),
            ),
            Container(
              height: 110,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffffad390),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(children: [
                Radio(
                  value: "",
                  groupValue: "",
                  activeColor: Colors.black,
                  onChanged: (index){},
                ),
                Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffa17f3c),
                  ),
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset("images/Platinum_2.png"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Platinum",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "customFont",
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "\$ 355",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: "customFont",
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => {
                        c.addWatch2(),
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff293f6e),
                        ),
                        child: Icon(Icons.add),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Obx(
                          () => Text(
                        "${c.Watch2.toString()}",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => {
                        c.removeWatch2(),
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff293f6e),
                        ),
                        child: Icon(Icons.remove),
                      ),

                    ),
                  ],
                ),
              ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TotalPage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffffad390),
                ),
                child: Center(
                  child: Text(
                    "Check Total",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "customFont",
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
                 ],
          ),
      ),
      ),
    );
  }
}