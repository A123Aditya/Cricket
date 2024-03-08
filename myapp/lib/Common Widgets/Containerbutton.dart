import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final Color? color;
  final Color? textcolor;
  final double? textFont;
  final double? buttonwidth;
  final double? buttonheight;

  const RegisterButton(
      {Key? key,
      this.onTap,
      this.text,
      this.color,
      this.textcolor,
      this.textFont,
      this.buttonwidth,
      this.buttonheight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: buttonwidth!.w,
        height: buttonheight!.h,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: color ?? Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(text ?? "Click Me",
              style: GoogleFonts.aBeeZee(
                color: textcolor ?? Colors.white,
                fontSize: textFont ?? 18,
              )),
        ),
      ),
    );
  }
}
