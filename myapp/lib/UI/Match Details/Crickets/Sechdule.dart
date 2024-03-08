import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SechduleInfo extends StatelessWidget {
  const SechduleInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Sechdule Matches....",
                      style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w600, fontSize: 20)),
                  SizedBox(
                    height: 30,
                  ),
                  Icon(
                    Icons.punch_clock_rounded,
                    color: Colors.deepPurple,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/Cricket Image.jpg"))),
                          ),
                          Container(
                              width: 90.w,
                              child: FittedBox(
                                  child: Text(
                                "Team Name 1",
                                style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.w600),
                              ))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/VolleyBall.jpg"))),
                          ),
                          Container(
                              width: 90.w,
                              child: FittedBox(
                                  child: Text("Team Name 2",
                                      style: GoogleFonts.aBeeZee(
                                          fontWeight: FontWeight.w600))))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
