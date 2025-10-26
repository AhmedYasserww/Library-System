import 'package:flutter/material.dart';
import 'package:library_system/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:library_system/generated/assets.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
         PageViewItem(
          title:" Discover Endless Knowledge",
          subtitle: "Find your next great read from a vast collection of inspiring books."
          "Learn, grow, and explore new worlds all in one digital library.",
          image: Assets.imagesOnboardingImage1,
        ),
        PageViewItem(
          title: "Your Favorite Books, Anytime",
          subtitle: "Carry your library wherever you go."
          " Borrow, read, and enjoy your favorite titles with just a tap.",
          image: Assets.imagesOnboardingImage2,
        ),
         PageViewItem(
          title: "Wonderful User Experience",
          subtitle: "Start exploring now and experience the convenience of online shopping at its best.",
          image: Assets.imagesOnboardingImage3,
        ),
      ],
    );
  }
}
