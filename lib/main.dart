import 'package:cantina/core/service_locator.dart';
import 'package:cantina/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  setUpDependencies();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cantina do Campus",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: Scaffold(body: HomePage()),
    ),
  );
}
