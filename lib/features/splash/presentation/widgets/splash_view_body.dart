import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/widgets/sliding_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logoImage),
          SizedBox(
            height: 10,
          ),
          SlidingText(slidingAnimation: slidingAnimation)
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 10), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  Future<Null> navigateToHome() {
    return Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => HomeView(),
          ));
    });
  }
}
