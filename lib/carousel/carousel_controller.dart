import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final carouselControllerProvider =
    StateNotifierProvider<CarouselControllerNotifier, int>(
  (ref) => CarouselControllerNotifier(),
);

class CarouselControllerNotifier extends StateNotifier<int> {
  late PageController pageController;

  CarouselControllerNotifier() : super(0) {
    pageController = PageController(initialPage: 0);
  }

  void changePage(int index) {
    state = index;
  }

  void animateToPage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
