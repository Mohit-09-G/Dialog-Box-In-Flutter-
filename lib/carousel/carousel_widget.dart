import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_test/carousel/carousel_controller.dart';
import 'package:new_test/carousel/carousel_indicator.dart';

class CarouselWidget extends ConsumerWidget {
  final List<Widget> pages;
  final double height;

  const CarouselWidget({
    super.key,
    required this.pages,
    this.height = 300,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(carouselControllerProvider);
    final controller = ref.read(carouselControllerProvider.notifier);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: height,
          child: PageView(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.changePage(index);
            },
            children: pages,
          ),
        ),
        CarouselIndicators(
          totalPages: pages.length,
          currentPage: currentPage,
          onDotTapped: controller.animateToPage,
        ),
      ],
    );
  }
}
