import 'package:flutter/material.dart';
import 'package:my_first_flutter/screens/form_ex.dart';
import 'package:my_first_flutter/screens/home_page.dart';
import 'package:my_first_flutter/widgets/intro_card.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

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
                  cardTitle: "Basic Widgets",
                  img: "images/forestbg.jpg",
                  onClick: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyHomePage()));
                  }),
              SizedBox(
                height: 25,
              ),
              //SECOND CONTAINER
              IntroCard(
                  cardTitle: "Form Example",
                  img: "images/forestbg.jpg",
                  onClick: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FormEx()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
