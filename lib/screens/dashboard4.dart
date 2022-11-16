import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter/widgets/dashboard4_card.dart';

class DashBoard4 extends StatelessWidget {
  const DashBoard4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
        ),
        width: Get.width,
        height: Get.height,
        child: ListView(
          children: [
            //top item with bg
            Container(
              width: Get.width,
              height: Get.height * .3,
              padding: EdgeInsets.only(
                top: 25,
                left: 20,
                right: 20,
                bottom: 30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: AssetImage("images/forestbg.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.pink.withOpacity(.6), BlendMode.darken),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //left icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  //the title Text
                  Text(
                    "Choose your Service",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            //bottom section
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  //first row
                  Row(
                    children: [
                      Expanded(
                          child: Dashboard4Card(
                        onPressed: () {},
                        title: "Haircut",
                        img: "images/salad.png",
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Dashboard4Card(
                        onPressed: () {},
                        title: "Spa",
                        img: "images/salad.png",
                      )),
                    ],
                  ),
                  //sec row
                  Row(
                    children: [
                      Expanded(
                          child: Dashboard4Card(
                        onPressed: () {},
                        title: "Makeup",
                        img: "images/salad.png",
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Dashboard4Card(
                        onPressed: () {},
                        title: "Facial",
                        img: "images/salad.png",
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
