import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/const/color.dart';
import 'package:travel_app/const/style.dart';
import 'package:travel_app/model/travel_info.dart';
import 'package:travel_app/tour_details_page.dart';

class HomePage extends StatelessWidget {
  final travel_List = Travel.generatedTravelInfoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.12,
        backgroundColor: baseColorWhite,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.08,
          ),
          child: Icon(
            Icons.menu,
            color: primaryBlack,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08,
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
            child: CircleAvatar(
              radius: 25,
              backgroundColor: baseColorWhite,
              backgroundImage: AssetImage(
                "images/user1.jpg",
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.08,
              right: MediaQuery.of(context).size.width * 0.08,
            ),
            child: Text(
              "Let's enjoy",
              style: myStyle(16, secondaryMediumGray, FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.08,
              right: MediaQuery.of(context).size.width * 0.08,
              bottom: MediaQuery.of(context).size.height * 0.04,
            ),
            child: Text(
              "your vacation!",
              style: myStyle(22, primaryBlack, FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.08,
              right: MediaQuery.of(context).size.width * 0.08,
              bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  height: 55,
                  width: MediaQuery.of(context).size.width * 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffF5F5F5),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: secondaryMediumGray,
                        size: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      // TextFormField(
                      //   decoration: const InputDecoration(
                      //     border: UnderlineInputBorder(),
                      //     hintText: 'Search your trip',
                      //     hintStyle: TextStyle(color: Colors.black54),
                      //   ),
                      // ),
                      Text(
                        "Search your trip",
                        style: myStyle(16, secondaryMediumGray),
                      ),
                      // TextField(
                      //   cursorColor: Colors.grey,
                      //   decoration: InputDecoration(
                      //       fillColor: Colors.white,
                      //       filled: true,
                      //       border: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(10),
                      //           borderSide: BorderSide.none),
                      //       hintText: 'Search',
                      //       hintStyle:
                      //           TextStyle(color: Colors.grey, fontSize: 18),
                      //       prefixIcon: Container(
                      //         padding: EdgeInsets.all(15),
                      //         child: Icon(Icons.search),
                      //         width: 18,
                      //       )),
                      // ),
                    ],
                  ),
                ),
                Positioned(
                  right: MediaQuery.of(context).size.width * -0.09,
                  bottom: -8,
                  top: -8,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.08,
                    ),
                    padding: EdgeInsets.all(5),
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: baseColorWhite,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: primaryTeal,
                      ),
                      child: Image.asset(
                        "images/volume.png",
                        color: Colors.white,
                      ),
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
              bottom: MediaQuery.of(context).size.height * 0.025,
              top: MediaQuery.of(context).size.height * 0.023,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    "All",
                    style: myStyle(16, primaryTeal),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "New",
                    style: myStyle(16, secondaryMediumGray),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Most Viewed",
                    style: myStyle(16, secondaryMediumGray),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Recommended",
                    style: myStyle(16, secondaryMediumGray),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.08,
              bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            height: 260,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              TourDetailsPage(travel_List[index])));
                    },
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              travel_List[index].img,
                              height: double.infinity,
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * 0.55,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          bottom: 40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                travel_List[index].name,
                                style:
                                    myStyle(20, Colors.white, FontWeight.w600),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    travel_List[index].address,
                                    style: myStyle(
                                        15, Colors.white, FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            right: 15,
                            top: 20,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ))
                      ],
                    ),
                  );
                },
                separatorBuilder: (_, index) => SizedBox(
                      width: 20,
                    ),
                itemCount: travel_List.length),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.08,
              right: MediaQuery.of(context).size.width * 0.08,
              bottom: MediaQuery.of(context).size.height * 0.03,
            ),
            child: Text(
              "Popular Categories",
              style: myStyle(20, primaryBlack, FontWeight.w600),
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
                Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: primaryTeal,
                      backgroundImage: AssetImage("images/hotel.png"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Hotel",
                      style: myStyle(16, secondaryMediumGray),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: primaryTeal,
                      backgroundImage: AssetImage("images/event.png"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Events",
                      style: myStyle(16, secondaryMediumGray),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: primaryTeal,
                      backgroundImage: AssetImage("images/camping.png"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Camping",
                      style: myStyle(16, secondaryMediumGray),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: primaryTeal,
                      backgroundImage: AssetImage("images/trip.png"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Trips",
                      style: myStyle(16, secondaryMediumGray),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
