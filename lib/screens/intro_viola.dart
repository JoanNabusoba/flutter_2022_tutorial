import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroViola extends StatelessWidget {
  const IntroViola({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(54, 181, 76, 1),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          //Top section
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 100,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(54, 181, 76, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Welcome!",
                    style: TextStyle(color: Colors.black87, fontSize: 32),
                  ),
                  Image(
                    image: AssetImage("images/salad.png"),
                    width: Get.width * .5,
                    height: Get.width * .5,
                  ),
                  Container(
                    width: Get.width * .6,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(17, 89, 58, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Thanks for logging in".toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //The circular section
          Positioned(
            //top: Get.height - 100,
            left: 0,
            right: 0,
            bottom: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.home,
                    size: 30,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(54, 181, 76, 1),
                  ),
                  child: Icon(
                    Icons.cancel,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
