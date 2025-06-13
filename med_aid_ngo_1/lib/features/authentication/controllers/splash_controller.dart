import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController with GetSingleTickerProviderStateMixin {

  
  // Animation controllers
  late AnimationController animationController;
  
  // Animation values
  final logoOpacity = 0.0.obs;
  final logoScale = 0.5.obs;
  final textOpacity = 0.0.obs;
  
  // State flags
  final isNavigating = false.obs;
  
  @override
  void onInit() {
    super.onInit();
    
    // Initialize animation controller
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    
    // Start the splash animation sequence
    _startSplashAnimation();
  }
  
  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
  
  // Main animation sequence for splash screen
  void _startSplashAnimation() async {
    // Step 1: Fade in and flip logo
    logoOpacity.value = 1.0;
    logoScale.value = 1.0;
    
    // Step 2: After 500ms, fade in text
    await Future.delayed(const Duration(milliseconds: 500));
    textOpacity.value = 1.0;
    
    // Step 3: After 1000ms, animate containers into place using TransitionController
    await Future.delayed(const Duration(milliseconds: 1000));
    // await _transitionController.show();
    
    // Step 4: Check auth state after animations
    await Future.delayed(const Duration(seconds: 3));
    _determineNavigationTarget();
  }
  
  // Check if user is authenticated and set navigation target
  void _determineNavigationTarget() {
    // Navigate to starting options screen first
    // const nextRoute = '/auth-test';
    
    // Navigate using the transition controller
    isNavigating.value = true;
    // _appRouter.goWithTransition(nextRoute);
  }
}
