import 'package:bookly/features/home/presentation/views/widgets/custom_book_container.dart';
import 'package:flutter/material.dart';

class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => CustomBookContainer(),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: 5),
    );
  }
}
