import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerWithImage extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  final String imagePath;
  final BoxFit? boxFit;
  final FilterQuality? filterQuality;
  final bool isNetworkImage;

  ContainerWithImage({
    this.height,
    this.width,
    this.radius,
    required this.imagePath,
    this.boxFit,
    this.filterQuality,
    this.isNetworkImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height??50.h,
      width:  width??50.w,
      decoration: BoxDecoration(
        border: Border.all(),
        image: DecorationImage(
          image: _getImageProvider(),
          fit: boxFit ?? BoxFit.cover,
          filterQuality: filterQuality ?? FilterQuality.high,
        ),
        borderRadius: BorderRadius.circular(radius??10)
      ),
    );
  }

  ImageProvider<Object> _getImageProvider() {
    if (isNetworkImage) {
      return NetworkImage(imagePath) as ImageProvider<Object>;
    } else {
      return AssetImage(imagePath) as ImageProvider<Object>;
    }
  }
}
