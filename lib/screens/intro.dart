import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter/screens/shop_design1.dart';
import 'package:my_first_flutter/screens/shop_design2.dart';

import '../widgets/intro_card.dart';
import 'bottom_nav_demo.dart';
import 'bottomnav_withfab.dart';
import 'dashboard3.dart';
import 'form_ex.dart';
import 'home_page.dart';
import 'intro_login.dart';
import 'multiple_scroll.dart';
import 'onboard_ex.dart';
import 'shop_design2-onboard.dart';
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
              //SEVENTH CONTAINER
              SizedBox(
                height: 25,
              ),
              IntroCard(
                  onClick: () {
                    Get.to(() => OnboardExample());
                  },
                  img: "images/forestbg.jpg",
                  cardTitle: "Onboarding example"),
              //SEVENTH CONTAINER
              SizedBox(
                height: 25,
              ),
              IntroCard(
                  onClick: () {
                    Get.to(() => MultipleScroll());
                  },
                  img: "images/forestbg.jpg",
                  cardTitle: "Dashboard with multiple scroll"),
              //EIGHTH CONTAINER
              SizedBox(
                height: 25,
              ),
              IntroCard(
                  onClick: () {
                    Get.to(() => ShopDesign1());
                  },
                  img: "images/forestbg.jpg",
                  cardTitle: "Shop Design 1"),
              //ninth CONTAINER
              SizedBox(
                height: 25,
              ),
              IntroCard(
                  onClick: () {
                    Get.to(() => ShopDesign2Onboard());
                  },
                  img: "images/forestbg.jpg",
                  cardTitle: "Shop Design 2"),
              //TENTH CONTAINER
              SizedBox(
                height: 25,
              ),
              IntroCard(
                  onClick: () {
                    Get.to(() => DashBoard3());
                  },
                  img: "images/forestbg.jpg",
                  cardTitle: "Dashboard design 3"),
            ],
          ),
        ),
      ),
    );
  }
}
