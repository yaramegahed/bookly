import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kPrimaryColor,
      title: Padding(
        padding: const EdgeInsets.only(left: 22.0),
        child: Image.asset(
          AssetsData.logoImage,
          width: 75,
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView,);
            },
            icon: Icon(
              Icons.search_rounded,
              size: 30,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
