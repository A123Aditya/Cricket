import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/UI/HomeScreen/Pages/Cricket.dart';
import 'package:myapp/UI/Match%20Details/Crickets/Live.dart';
import 'package:myapp/UI/Match%20Details/Crickets/Sechdule.dart';
import 'package:myapp/UI/Match%20Details/Crickets/Upcoming.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CricketHome extends StatelessWidget {
  CricketHome({super.key});
  var pagecontoller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 450.h,
                    child: PageView(
                      controller: pagecontoller,
                      scrollDirection: Axis.horizontal,
                      children: [LiveInfo(), UpcomingInfo(), SechduleInfo()],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SmoothPageIndicator(
                    controller: pagecontoller,
                    count: 3,
                    effect: WormEffect(spacing: 30),
                    onDotClicked: (index) {
                      pagecontoller.animateToPage(
                        index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
