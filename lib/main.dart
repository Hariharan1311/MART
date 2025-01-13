import 'dart:async'; // Import the async library for Timer
import 'package:flutter/material.dart';
import 'package:mart/pages/backbone.dart';
import 'package:mart/pages/homepage.dart';

void main() {
  runApp(MaterialApp(
    home: Backbone(),
    debugShowCheckedModeBanner: false,
  ));
}
