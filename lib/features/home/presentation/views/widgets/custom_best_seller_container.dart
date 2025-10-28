import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBestSellerContainer extends StatelessWidget {
  final String imageUrl;

  const CustomBestSellerContainer({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: 105,
        width: 70,
        fit: BoxFit.fill,
      ),
    );
  }
}
