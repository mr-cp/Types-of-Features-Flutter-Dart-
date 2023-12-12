import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/provider.dart';
import 'screen/home_screen.dart';

main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MaterialApp(
        title: 'Counter App',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    ),
  );
}
