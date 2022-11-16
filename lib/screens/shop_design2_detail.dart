import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopDesign2Detail extends StatelessWidget {
  const ShopDesign2Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(246, 246, 246, 1),
        leading: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black87,
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black87,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: ListView(
          children: [
            //Image
            Container(
              padding: EdgeInsets.all(20),
              width: Get.width,
              height: Get.height * .4,
              decoration: BoxDecoration(
                color: Color.fromRGBO(246, 246, 246, 1),
                image: DecorationImage(
                  image: AssetImage("images/chair1.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            //title section
            Container(
              width: Get.width,
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //left texts
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lounge",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Chair",
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ],
                  ),
                  //right texts
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "24,500KES",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //description section
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Description",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
            ),
            //Sizedbox
            SizedBox(
              height: 18,
            ),
            //bottom section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //left button
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(246, 246, 246, 1),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Color.fromRGBO(49, 48, 62, 1),
                    ),
                  ),
                ),
                //space
                SizedBox(
                  width: 18,
                ),
                //button
                Container(
                  width: Get.width * .6,
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromRGBO(49, 49, 60, 1)),
                  child: TextButton(
                    onPressed: (() {}),
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
