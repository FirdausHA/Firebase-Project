import 'package:flutter/material.dart';
import 'package:project_firebase/Model/Product.dart';

import 'Detail.dart';

class PinkGold extends StatefulWidget {
  const PinkGold({Key? key}) : super(key: key);

  @override
  State<PinkGold> createState() => _PinkGoldState();
}

class _PinkGoldState extends State<PinkGold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          gridWatch(),
        ],
      ),
    );
  }

  Widget gridWatch() {
    return GridView.builder(
      itemCount: dummyWatch_1.length,
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        mainAxisExtent: 240,
      ),
      itemBuilder: (context, index) {
        Watch watch = dummyWatch_1[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Detail(watch: watch);
            }));
          },
          child: Container(
            alignment: Alignment.topRight,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xfffdd691),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          watch.image,
                          width: 180,
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          watch.name,
                          style: const TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: "customFont",
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
