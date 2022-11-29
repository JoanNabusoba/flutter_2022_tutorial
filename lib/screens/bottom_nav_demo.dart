import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sliver_demo.dart';

class BottomNavbarDemo extends StatelessWidget {
  const BottomNavbarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //TITLE TEXT
            Text(
              "Bottom Navigation Bar Demo",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            //SPACE
            SizedBox(
              height: 30,
            ),

            //DESCRIPTION TEXT
            Text("Bottom Navigation abr can be used to showcase quick menu"),
            SizedBox(
              height: 30,
            ),
            ListTile(
              leading: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/forestbg.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              title: Text("Rumba Japani"),
              subtitle: Text("By Sautisol"),
              trailing: Text("3:21"),
            ),
          ],
        ),
      ),

      //BOTTOM NAVBAR
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          //Respond to item press.
          if (value == 0) {
            Get.to(()=> SliverDemo());
          } else if (value == 1) {
            Get.to(() => SliverDemo());
          } else if (value == 2) {
            Get.to(() => SliverDemo());
          } else if (value == 3) {
            Get.to(() => SliverDemo());
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_outlined),
            label: "Favourites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: "Music",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: "Places",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: "News",
          ),
        ],
      ),
    );
  }
}
