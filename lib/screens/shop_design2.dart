import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/shop_card21.dart';
import 'shop_design2_detail.dart';

class ShopDesign2 extends StatelessWidget {
  const ShopDesign2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu_sharp,
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=740&t=st=1668631625~exp=1668632225~hmac=3da1063eae5a10f6c1294a0b3964f993a9aeb955b2d9bfa4321506053de69107"),
            ),
          ),
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            //title
            Text(
              "Choose\n Your Product",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(49, 48, 62, 1),
              ),
            ),
            //space
            SizedBox(
              height: 20,
            ),
            //search and filter section
            Row(
              children: [
                //searchbox
                Expanded(
                  child: Container(
                    height: 48,
                    child: TextField(
                      decoration: new InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Find your product",
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(49, 48, 62, 1),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.sort,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            //space
            SizedBox(
              height: 20,
            ),
            //TODO GRID
            //card design
            Row(
              children: [
                Expanded(
                  child: ShopCard21(
                      onClick: () {
                        Get.to(() => ShopDesign2Detail());
                      },
                      img: "images/chair1.png",
                      title: "Lounge",
                      subtitle: "Chair",
                      price: "24,500 KES"),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: ShopCard21(
                      onClick: () {},
                      img: "images/chair2.png",
                      title: "Lounge",
                      subtitle: "Chair",
                      price: "24,500 KES"),
                ),
              ],
            ),
          ],
        ),
      ),

      //BOTTOM NAVBAR
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(49, 48, 62, 1),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          //Respond to item press.
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined), label: "Favourites"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Music"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: "Places"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: "News"),
        ],
      ),
    );
  }
}
