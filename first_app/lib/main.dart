import 'package:first_app/gradiet_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const SafeArea(
      child: MaterialApp(
        home: Scaffold(
          body: GradientContainer.purple(),
        ),
      ),
    ),
  );
}
