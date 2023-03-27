import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/const/color.dart';
import 'package:travel_app/const/style.dart';
import 'package:travel_app/model/travel_info.dart';

class TourDetailsPage extends StatelessWidget {
  Travel travel;
  TourDetailsPage(this.travel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 380,
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: 30,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: double.infinity,
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Image.asset(
                          travel.img,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 40,
                        ),
                        child: Positioned(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(5),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: Icon(
                                    Icons.arrow_back_ios_new,
                                    size: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.more_horiz,
                                size: 35,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        right: 20,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.4)),
                          child: Image.asset(
                            "images/arrow.png",
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.08,
                    right: MediaQuery.of(context).size.width * 0.08,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        travel.name,
                        style: myStyle(25, Colors.black, FontWeight.w700),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.08,
                    right: MediaQuery.of(context).size.width * 0.08,
                    top: 10,
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      Text(
                        travel.address,
                        style: myStyle(18, Colors.black54, FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "\$${travel.dollar}",
                        style: myStyle(18, Colors.black54, FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.08,
                            ),
                            padding: EdgeInsets.all(2),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: baseColorWhite,
                              boxShadow: [
                                BoxShadow(
                                  color: secondaryMediumGray.withOpacity(0.2),
                                  offset: Offset.fromDirection(1.0, 2.0),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.star,
                              color: Color(0xffFFA133),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${travel.rating}",
                            style: myStyle(18, Colors.black, FontWeight.w700),
                          ),
                          Text(
                            "${travel.review}",
                            style: myStyle(16, Colors.black54, FontWeight.w600),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.08,
                            ),
                            padding: EdgeInsets.all(10),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: baseColorWhite,
                              boxShadow: [
                                BoxShadow(
                                  color: secondaryMediumGray.withOpacity(0.2),
                                  offset: Offset.fromDirection(1.0, 2.0),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Image.asset(
                              "images/destination.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${travel.direction}",
                            style: myStyle(18, Colors.black, FontWeight.w700),
                          ),
                          Text(
                            "Direction",
                            style: myStyle(16, Colors.black54, FontWeight.w600),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.08,
                            ),
                            padding: EdgeInsets.all(10),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: baseColorWhite,
                              boxShadow: [
                                BoxShadow(
                                  color: secondaryMediumGray.withOpacity(0.2),
                                  offset: Offset.fromDirection(1.0, 2.0),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Image.asset(
                              "images/sunny.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${travel.sunny}",
                            style: myStyle(18, Colors.black, FontWeight.w700),
                          ),
                          Text(
                            "Sunny",
                            style: myStyle(16, Colors.black54, FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.08,
                    right: MediaQuery.of(context).size.width * 0.08,
                    bottom: 10,
                  ),
                  child: Text(
                    "Descriptions",
                    style: myStyle(20, Colors.black, FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.08,
                    right: MediaQuery.of(context).size.width * 0.08,
                  ),
                  child: Text(
                    "${travel.descriptions}",
                    style: myStyle(16, Colors.black54, FontWeight.w600),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 0,
            left: 0,
            child: InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  left: 50,
                  right: 50,
                ),
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: primaryDarkOrange),
                child: Text(
                  "Book Now",
                  style: myStyle(
                    20,
                    baseColorWhite,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
