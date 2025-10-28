import 'package:bookly/features/home/presentation/views/widgets/custom_fading_animation.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_image_loading.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListViewLoading extends StatelessWidget {
  const FeaturedBooksListViewLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingAnimation(
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: SizedBox(
          height: 224,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomImageLoading(),
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              itemCount: 15),
        ),
      ),
    );
  }
}
