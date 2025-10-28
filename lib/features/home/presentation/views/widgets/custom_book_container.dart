import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../../core/utils/assets_data.dart';

class CustomBookContainer extends StatelessWidget {
  final String imageUrl;
  const CustomBookContainer({
    super.key, required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: 224,
        width: 150,
        fit: BoxFit.fill,
      
      ),
    );
    // return Container(
    //   height: 224,
    //   width: 150,
    //   decoration: BoxDecoration(
    //       color: Colors.red, borderRadius: BorderRadius.circular(20)),
    //   child: Image.asset(
    //     AssetsData.bookImage,
    //     fit: BoxFit.fill,
    //   ),
    // );
  }
}