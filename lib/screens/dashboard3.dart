import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/dashboard3_card.dart';

class DashBoard3 extends StatelessWidget {
  const DashBoard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(23, 19, 192, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(23, 19, 192, 1),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
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
        child: Column(
          children: [
            //top text
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dashboard",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Last updated: 2 mins ago",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            //bottom section
            Expanded(
              child: Container(
                width: Get.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(241, 245, 255, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(35)),
                ),
                child: ListView(
                  children: [
                    //first row
                    Row(
                      children: [
                        //first item
                        Expanded(
                            child: Dashboard3Card(
                          img: "images/salad.png",
                          title: "My Account",
                          onClicked: () {},
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        //first item
                        Expanded(
                            child: Dashboard3Card(
                          img: "images/salad.png",
                          title: "Inventory",
                          onClicked: () {},
                        )),
                      ],
                    ),
                    //second row
                    Row(
                      children: [
                        //first item
                        Expanded(
                            child: Dashboard3Card(
                          img: "images/salad.png",
                          title: "Search Merchandise",
                          onClicked: () {},
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        //second item
                        Expanded(
                            child: Dashboard3Card(
                          img: "images/salad.png",
                          title: "Request",
                          onClicked: () {},
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
