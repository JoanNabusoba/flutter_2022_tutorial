import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sliver_demo.dart';

class IntroLogin extends StatelessWidget {
  const IntroLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/forestbg.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Space
              SizedBox(height: 40),
              //Row section with image and text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(size: 70),
                  //Horizontal space
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Trevor Shop",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              //facebook custom button
              InkWell(
                onTap: () {
                  Get.to(() => SliverDemo());
                },
                child: Container(
                  width: Get.width,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(106, 112, 248, 1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Login with Facebook",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
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
