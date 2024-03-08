import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VolleyBall_Card_Home extends StatelessWidget {
  const VolleyBall_Card_Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Center(
            child: ClipRRect(
              child: Container(
                child: Text("News Info"),
                height: 450.h,
                width: 300.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/VolleyBall.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.purple.shade500,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
          )
        ],
      ),
    );
    ;
  }
}
