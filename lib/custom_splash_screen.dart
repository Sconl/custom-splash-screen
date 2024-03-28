// File: custom_splash_screen.dart.dart
// Author: Sconl Peter
// Email: sconl@proton.me
// Description: A customizable splash screen widget that allows you to integrate animations (Rive format), logos (SVG format), and text for a visually appealing app startup experience. It adapts to the user's app theme and provides a flexible way to showcase your brand identity during launch.
// Create Date & Time: Wednesday, March 28, 2024 at 10:18 PM PST

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class CustomSplashScreen extends StatefulWidget {
  final String? riveAsset; // Optional Rive animation asset path (e.g., 'assets/animations/my_animation.riv')
  final String? svgLogoPath; // Optional SVG logo path (e.g., 'assets/images/my_logo.svg')
  final String text; // Text to display during animation

  const CustomSplashScreen({
    Key? key,
    this.riveAsset,
    this.svgLogoPath,
    required this.text,
  }) : super(key: key);

  @override
  SplashWidgetState createState() => SplashWidgetState();
}

class SplashWidgetState extends State<CustomSplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    Future.delayed(const Duration(seconds: 3), () {
      controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: Stack(
        alignment: Alignment.center,
        children: [
          // ... other widgets using theme.primaryColor as needed

          if (widget.riveAsset != null) // Check if Rive asset is provided
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: RiveAnimation.asset(
                  widget.riveAsset!,
                  fit: BoxFit.contain,
                ),
              ),
            ),

          if (widget.svgLogoPath != null) // Check if SVG logo path is provided
            Positioned(
              top: MediaQuery.of(context).size.height * 0.9,
              child: Center(
                child: SvgPicture.asset(
                  widget.svgLogoPath!,
                  color: theme.colorScheme.onPrimary,
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
              ),
            ),

          Positioned( // Positioned widget for AnimatedTextKit
            top: MediaQuery.of(context).size.height * 0.8,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      widget.text,
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                  pause: const Duration(seconds: 3),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
