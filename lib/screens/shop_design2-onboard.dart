import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter/screens/shop_design2.dart';

class ShopDesign2Onboard extends StatelessWidget {
  const ShopDesign2Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          children: [
            //top section
            Expanded(
              child: Container(
                width: Get.width,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 246, 237, 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //title
                    Text(
                      "Funiture",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //image
                    Container(
                      height: Get.width * .5,
                      width: Get.width * .5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/chair1.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //bottom section
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        //title
                        Text(
                          "Find the Best Furniture Style for You",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //subtitle
                        Text(
                          "There are many new outfits that make you look cool",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),

                    //button
                    Container(
                      width: Get.width * .6,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromRGBO(49, 49, 60, 1)),
                      child: TextButton(
                        onPressed: (() {
                          Get.to(() => ShopDesign2());
                        }),
                        child: Text(
                          "Get Started",
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
