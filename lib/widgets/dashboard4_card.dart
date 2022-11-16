import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard4Card extends StatelessWidget {
  const Dashboard4Card(
      {super.key,
      required this.onPressed,
      required this.img,
      required this.title});

  final VoidCallback onPressed;
  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: Get.width * .45,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(img),
              height: Get.width * .2,
              width: Get.width * .2,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
