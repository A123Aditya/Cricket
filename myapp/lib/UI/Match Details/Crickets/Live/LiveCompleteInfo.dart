// This Screen is for full info of live when tap on card

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Common Widgets/ContainerWithImage.dart';

class LiveCompleteInfo extends StatelessWidget {
  LiveCompleteInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 233, 246),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    ContainerWithImage(
                      height: 100.h,
                      width: 100.w,
                      imagePath: "assets/Cricket Image.jpg",
                      isNetworkImage: false,
                      boxFit: BoxFit.cover,
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SizedBox(
                        height: 40,
                        width: 139,
                        child: Text("Team Name 1",
                            style: GoogleFonts.akayaKanadaka(
                                fontWeight: FontWeight.w600, fontSize: 20.sp)),
                      ),
                    )
                  ],
                ),
                Text("V/S",
                    style: GoogleFonts.akayaKanadaka(
                        fontWeight: FontWeight.w600, fontSize: 40.sp)),
                Column(
                  children: [
                    ContainerWithImage(
                      height: 100.h,
                      width: 100.w,
                      imagePath: "assets/Cricket Image.jpg",
                      isNetworkImage: false,
                      boxFit: BoxFit.cover,
                    ),
                    FittedBox(
                      fit: BoxFit
                          .scaleDown, // This ensures the child scales down to fit within the constraints
                      child: SizedBox(
                        height: 40,
                        width: 139,
                        child: Text(
                          "Team Name 2",
                          style: GoogleFonts.akayaKanadaka(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(
                    fit: BoxFit
                        .scaleDown, // This ensures the child scales down to fit within the constraints
                    child: SizedBox(
                      height: 40,
                      width: 90,
                      child: Text(
                        "000/00",
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit
                        .scaleDown, // This ensures the child scales down to fit within the constraints
                    child: SizedBox(
                      height: 40,
                      width: 90,
                      child: Text(
                        "000/00",
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Statistics Heading
          ],
        ),
      )),
    );
  }
}
