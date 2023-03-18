import 'package:flutter/material.dart';

import 'components.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  PageController pc = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff221F1E),
      body: PageView(
        controller: pc,
        onPageChanged: (int val) {
          setState(() {
            currentIndex = val;
          });
        },
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100, bottom: 50),
                height: 370,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/36.png"), fit: BoxFit.cover)),
              ),
              Text("Boost Productivity",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.9))),
              SizedBox(
                height: 20,
              ),
              Text(
                  textAlign: TextAlign.center,
                  "Foc.io helps you boost your productivity\non a different level",
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.5))),
              Container(
                height: 55,
                width: 115,
                decoration: BoxDecoration(
                  color: Color(0xffEF895F),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(top: 40, bottom: 40),
                child: MaterialButton(
                  child: Text("Next"),
                  onPressed: () {
                    pc.animateToPage(1,
                        duration: Duration(milliseconds: 450),
                        curve: Curves.easeIn);
                  },
                  textColor: Colors.white,
                ),
              ),
              CustomContainer(
                index: currentIndex,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100, bottom: 50),
                height: 370,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/37.png"), fit: BoxFit.cover)),
              ),
              Text("Work Seamlessly",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.9))),
              SizedBox(
                height: 20,
              ),
              Text(
                  textAlign: TextAlign.center,
                  "Get your work done seamlessly\nwithout interruption ",
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.5))),
              Container(
                height: 55,
                width: 115,
                decoration: BoxDecoration(
                  color: Color(0xffEF895F),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(top: 40, bottom: 40),
                child: MaterialButton(
                  child: Text("Next"),
                  onPressed: () {
                    pc.animateToPage(2,
                        duration: Duration(milliseconds: 450),
                        curve: Curves.easeIn);
                  },
                  textColor: Colors.white,
                ),
              ),
              CustomContainer(
                index: currentIndex,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100, bottom: 50),
                height: 370,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/38.png"), fit: BoxFit.cover)),
              ),
              Text("Achieve Higher Goals",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.9))),
              SizedBox(
                height: 20,
              ),
              Text(
                  textAlign: TextAlign.center,
                  "By boosting your producivity we help\nyou achieve higher goals",
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.5))),
              Container(
                height: 55,
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xffEF895F),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(top: 40, bottom: 40),
                child: MaterialButton(
                  child: Text("Get Started"),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("sign");
                  },
                  textColor: Colors.white,
                ),
              ),
              CustomContainer(
                index: currentIndex,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
