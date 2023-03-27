import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/const/color.dart';
import 'package:travel_app/const/style.dart';
import 'package:travel_app/home_page.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.08,
                  MediaQuery.of(context).size.height * 0.05,
                  MediaQuery.of(context).size.width * 0.08,
                  MediaQuery.of(context).size.height * 0.05,
                ),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryTeal,
                      ),
                      child: Text(
                        "C",
                        style: myStyle(25, baseColorWhite, FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "ravel",
                      style: myStyle(25, secondaryMediumGray.withOpacity(0.8),
                          FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.08,
                  right: MediaQuery.of(context).size.width * 0.08,
                  bottom: MediaQuery.of(context).size.height * 0.02,
                ),
                child: Text(
                  "Enjoy every good\nmoment",
                  style: myStyle(25, primaryBlack, FontWeight.w700),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.08,
                  right: MediaQuery.of(context).size.width * 0.08,
                  bottom: MediaQuery.of(context).size.height * 0.05,
                ),
                child: Text(
                  "Keep the world adventurous forever A way\nto explore our beautiful planet",
                  style: myStyle(
                    15,
                    secondaryMediumGray.withOpacity(0.8),
                    FontWeight.w500,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.08,
                    right: MediaQuery.of(context).size.width * 0.08,
                    bottom: MediaQuery.of(context).size.height * 0.05,
                  ),
                  height: 55,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: primaryDarkOrange),
                  child: Text(
                    "Next",
                    style: myStyle(
                      20,
                      baseColorWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 500,
            right: 3,
            child: Transform.rotate(
              angle: pi / 6,
              child: Container(
                padding: EdgeInsets.only(left: 80, top: 105),
                alignment: Alignment.center,
                height: 600,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: primaryTeal,
                ),
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: primaryDarkOrange,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                "images/bgimage.png",
                fit: BoxFit.cover,
              )),
        ],
      ),
    );
  }
}
