import 'Controller_Cart.dart';
import 'Total_Cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//saat menggunakan state management kita tidak perlu menggunakan stateful lagi
class Home extends StatelessWidget {

  //inisialisai
  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2011/03/16/16/01/tomatoes-5356__340.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => {
                        //saat ditap maka variabel tomat akan bertambah
                        //fungsi addTomato() bisa dilihat di file controller.dart
                        c.addWatch(),
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black12,
                        ),
                        child: Icon(Icons.add),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    //variabel tomato akan secara reaktif bertambah atau berkurang saat tombol + atau - ditap
                    //perlu dibungkus dengan Obx() agar variabel di dalamnya dapat berubah secara reaktif
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
                        //saat ditap maka variabel tomat akan berkurang
                        //fungsi removeTomato() bisa dilihat di file controller.dart
                        c.removeWatch(),
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black12,
                        ),
                        child: Icon(Icons.remove),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2018/10/03/21/57/cabbage-3722498_960_720.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      //saat ditap maka variabel cabbage akan bertambah
                      //fungsi addCabbage() bisa dilihat di file controller.dart
                      onTap: () => c.addWatch1(),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black12,
                        ),
                        child: Icon(Icons.add),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    //variabel cabbage akan secara reaktif bertambah atau berkurang saat tombol + atau - ditap
                    //perlu dibungkus dengan Obx() agar variabel di dalamnya dapat berubah secara reaktif
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
                      //saat ditap maka variabel cabbage akan berkurang
                      //fungsi removeCabbage() bisa dilihat di file controller.dart
                      onTap: () => c.removeWatch1(),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black12,
                        ),
                        child: Icon(Icons.remove),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  // TotalPage adalah halaman yang dituju
                  MaterialPageRoute(
                    builder: (context) => TotalPage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    "Check Total",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}