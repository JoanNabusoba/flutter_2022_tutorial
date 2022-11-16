import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardExample extends StatelessWidget {
  const OnboardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 138, 0, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //image
            Container(
              width: Get.width * .55,
              height: Get.width * .55,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/ride.png"), fit: BoxFit.cover),
              ),
            ),
            //titler with subtitle
            Column(
              children: [
                Text(
                  "We deliver worldwide",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "We deliver worldwide, check out our store and order, add to card or favourite items",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            //button
            Container(
              width: Get.width * .7,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 138, 0, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
