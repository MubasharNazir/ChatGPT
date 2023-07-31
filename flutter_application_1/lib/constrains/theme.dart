import 'package:flutter/material.dart';

final Lighttheme = ThemeData(
    colorScheme: ThemeData.light().colorScheme.copyWith(
        primary: Colors.white,
        onPrimary: Colors.black,
        secondary: Colors.deepOrange,
        onSecondary: Colors.white));

final Darktheme = ThemeData(
    colorScheme: ThemeData.dark().colorScheme.copyWith(
        primary: Colors.blueGrey,
        onPrimary: Colors.white,
        secondary: Colors.blueGrey,
        onSecondary: Colors.white));
