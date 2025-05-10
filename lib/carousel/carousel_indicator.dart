import 'package:flutter/material.dart';

class CarouselIndicators extends StatelessWidget {
  final int totalPages;
  final int currentPage;
  final Function(int) onDotTapped;

  const CarouselIndicators({
    super.key,
    required this.totalPages,
    required this.currentPage,
    required this.onDotTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalPages, (index) {
        bool isActive = index == currentPage;
        return GestureDetector(
          onTap: () => onDotTapped(index),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 5),
            height: isActive ? 16 : 12,
            width: isActive ? 16 : 12,
            decoration: BoxDecoration(
              color: isActive ? Colors.blueAccent : Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
        );
      }),
    );
  }
}
