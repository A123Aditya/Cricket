import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Controllers/ScoreController.dart';

import 'LiveCompleteInfo.dart';

class LiveInfo extends StatelessWidget {
  LiveInfo({super.key});
  final controller = Get.put(ScoreController());
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
                  Text("Live Matches....",
                      style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w600, fontSize: 20)),
                  const SizedBox(
                    height: 30,
                  ),
                  const Icon(
                    Icons.live_tv,
                    color: Colors.red,
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),

              // Score Card Section code

              InkWell(
                onTap: () {
                  Get.to(LiveCompleteInfo());
                },
                child: Card(
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
                                  image: const DecorationImage(
                                      filterQuality: FilterQuality.high,
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/Cricket Image.jpg"))),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                    width: 90.w,
                                    child: FittedBox(
                                        child: Text(
                                      "Team Name 1",
                                      style: GoogleFonts.aBeeZee(
                                          fontWeight: FontWeight.w600),
                                    ))),
                                Row(
                                  children: [
                                    Obx(() {
                                      String displayValue =
                                          controller.run.toString().isEmpty
                                              ? '0'
                                              : controller.wicket.toString();
                                      return Text(displayValue,
                                          style: const TextStyle(
                                              fontSize: 25,
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold));
                                    }),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text('-',
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Obx(() {
                                      String displayValue =
                                          controller.wicket.toString().isEmpty
                                              ? '0'
                                              : controller.wicket.toString();
                                      return Text(
                                        displayValue,
                                        style: const TextStyle(
                                            fontSize: 25,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      );
                                    }),
                                  ],
                                )
                              ],
                            ),
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
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage("assets/VolleyBall.jpg"))),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                    width: 90.w,
                                    child: FittedBox(
                                        child: Text("Team Name 2",
                                            style: GoogleFonts.aBeeZee(
                                                fontWeight: FontWeight.w600)))),
                                Row(
                                  children: [
                                    Obx(() {
                                      String displayValue =
                                          controller.run.toString().isEmpty
                                              ? '0'
                                              : controller.wicket.toString();
                                      return Text(displayValue,
                                          style: const TextStyle(
                                              fontSize: 25,
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold));
                                    }),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text('-',
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Obx(() {
                                      String displayValue =
                                          controller.wicket.toString().isEmpty
                                              ? '0'
                                              : controller.wicket.toString();
                                      return Text(
                                        displayValue,
                                        style: const TextStyle(
                                            fontSize: 25,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      );
                                    }),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // Score Card Section code ends Here
            ],
          ),
        ),
      ),
    );
  }
}
