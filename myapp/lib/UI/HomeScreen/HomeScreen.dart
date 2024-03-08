import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Common%20Widgets/Containerbutton.dart';
import 'package:myapp/UI/HomeScreen/Pages/Cricket.dart';
import 'package:myapp/UI/HomeScreen/Pages/VolleyBall.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Match Details/Crickets/CricketHomeScreen.dart';
import 'Pages/UmpireSection.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  var pagecontoller = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.deepPurple.shade200,
            appBar: AppBar(
              backgroundColor: Colors.deepPurple.shade200,
            ),
            drawer: CustomDrawer(),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        height: 450.h,
                        child: PageView(
                          scrollDirection: Axis.horizontal,
                          controller: pagecontoller,
                          children: [
                            InkWell(
                                onTap: () {
                                  Get.to(CricketHome());
                                },
                                child: Cricket_Card_Home()),
                            InkWell(child: VolleyBall_Card_Home())
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SmoothPageIndicator(
                      controller: pagecontoller,
                      count: 2,
                      effect: WormEffect(spacing: 30),
                      onDotClicked: (index) {
                        pagecontoller.animateToPage(
                          index,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RegisterButton(
                      buttonheight: 60,
                      buttonwidth: 300,
                      color: Colors.purple.shade600,
                      text: "Register Team",
                      textFont: 30,
                      onTap: () {
                        print("object");
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text("Are you a Volunteer...",
                              style: GoogleFonts.aclonica(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 25,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          RegisterButton(
                            buttonheight: 60,
                            buttonwidth: 300,
                            color: Colors.purple.shade600,
                            text: "Join Here...",
                            textFont: 30,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SocketIOExample(),
                                  ));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  String selectedSport = 'Cricket'; // Set the initial sport value

  // Widget CustomizedAppBar() {
  //   List<String> sports = ['Cricket', 'Volleyball']; // Add your sports

  //   return Center(
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         // Image.network(
  //         //   "https://media.istockphoto.com/id/467029165/vector/cricket-logo.jpg?s=612x612&w=0&k=20&c=OEptEgikZFDEEBi84xobuHBL_iBwJWdjBre0x45nV_o=",
  //         //   width: 16.w,
  //         //   height: 24.h,
  //         // ),
  //         SizedBox(
  //           width: 10,
  //         ),
  //         DropdownButton<String>(
  //           value: selectedSport,
  //           items: sports.map((String sport) {
  //             return DropdownMenuItem<String>(
  //               value: sport,
  //               child: Text(sport),
  //             );
  //           }).toList(),
  //           onChanged: (String? newValue) {
  //             // Handle dropdown value change
  //             if (newValue != null) {
  //               // Update the selectedSport variable
  //               selectedSport = newValue;
  //               // Do something with the selected sport
  //               print(newValue);
  //               // You can update the state or perform other actions here
  //             }
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  // }
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF9C2727), // Use a different shade of red
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF9C2727), // Use the same shade of red
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white, // Set text color to white
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white, // Set icon color to white
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white), // Set text color to white
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white, // Set icon color to white
            ),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white), // Set text color to white
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
