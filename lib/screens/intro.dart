import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/intro_card.dart';
import 'bottom_nav_demo.dart';
import 'bottomnav_withfab.dart';
import 'form_ex.dart';
import 'home_page.dart';
import 'intro_login.dart';
import 'sliver_demo.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //FIRST CONTAINER
              IntroCard(
                  onClick: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyHomePage()));
                  },
                  img: "images/forestbg.jpg",
                  cardTitle: "Basic Widgets"),

              SizedBox(
                height: 25,
              ),
              //SECOND CONTAINER
              IntroCard(
                  onClick: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FormEx()));
                  },
                  img: "images/forestbg.jpg",
                  cardTitle: "Form Example"),
              SizedBox(
                height: 25,
              ),
              //THIRD CONTAINER
              IntroCard(
                  onClick: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BottomNavbarDemo()));
                  },
                  img: "images/forestbg.jpg",
                  cardTitle: "Bottom Navbar Demo"),
              SizedBox(
                height: 25,
              ),
              //FOURTH CONTAINER
              IntroCard(
                  onClick: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BottomnavWithFab()));
                  },
                  img: "images/forestbg.jpg",
                  cardTitle: "Bottom Navbar with FAB"),
              SizedBox(
                height: 25,
              ),
              //FIFTH CONTAINER
              IntroCard(
                  onClick: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SliverDemo()));
                  },
                  img: "images/forestbg.jpg",
                  cardTitle: "Sliver Appbar example"),
              SizedBox(
                height: 25,
              ),
              //SIXTH CONTAINER
              IntroCard(
                  onClick: () {
                    Get.to(() => IntroLogin());
                  },
                  img: "images/forestbg.jpg",
                  cardTitle: "Intrologin example"),
            ],
          ),
        ),
      ),
    );
  }
}
