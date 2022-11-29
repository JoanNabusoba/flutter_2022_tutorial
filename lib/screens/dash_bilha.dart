import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "Manage Epilepsy with ease",
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        
        ),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //THIS IS FIRST ROW
            Container(
              width: Get.width,
              margin: EdgeInsets.all(20),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //THIS IS THE FIRST CARD 
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: Get.width * 0.4,
                      height: Get.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(0.4),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          //add image
                          Container(
                            width: Get.width,
                            height: Get.height * 0.2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/toolkit.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          //sizedbox
                          SizedBox(
                            height: 10,
                          ),
                          //text
                          Column(
                            children: [
                              Text(
                                "TOOLKIT",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 9.5,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                             
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
               //THIS IS THE SECOND CARD
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: Get.width * 0.4,
                      height: Get.width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(0.4),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          //add image
                          Container(
                            width: Get.width,
                            height: Get.height * 0.2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/firstaid.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          //sizedbox
                          SizedBox(
                            height: 10,
                          ),
                          //text
                          Column(
                            children: [
                              Text(
                                "BASIC FIRSTAID",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                             
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              
              //THIS IS SECOND ROW
              

              

            ),
            
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //THIS IS THE third CARD 
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: Get.width * 0.4,
                      height: Get.width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.4),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          //add image
                          Container(
                            width: Get.width,
                            height: Get.height * 0.2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/dawa.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          //sizedbox
                          SizedBox(
                            height: 15,
                          ),
                          //text
                          Column(
                            children: [
                              Text(
                                "SCHEDULE MEDICATION",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 9.5,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                             
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
               //THIS IS THE FORTH CARD
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: Get.width * 0.4,
                      height: Get.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          //add image
                          Container(
                            width: Get.width,
                            height: Get.height * 0.2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/trackbg.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          //sizedbox
                          SizedBox(
                            height: 10,
                          ),
                          //text
                          Column(
                            children: [
                              Text(
                                "TRACK RECORD",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 9.5,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                             
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              

            ),
            Row(
              
            )
            
          ],
        ),
      ),
      
    );
  }
}