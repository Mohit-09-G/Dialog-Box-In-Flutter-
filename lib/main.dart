import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_test/carousel/carousel_widget.dart';

void main() {
  runApp(
    const ProviderScope(
      // Riverpod needs this
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Always add super.key (best practice)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarouselWidget(
        pages: [
          Image.network(
            'https://cdn.pixabay.com/photo/2025/04/23/01/35/bird-9551361_1280.jpg',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://images.unsplash.com/photo-1518709268805-4e9042af9f23',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://cdn.pixabay.com/photo/2025/04/23/01/35/bird-9551361_1280.jpg',
            fit: BoxFit.cover,
          ),
        ],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
