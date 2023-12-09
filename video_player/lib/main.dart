import 'package:flutter/material.dart';
import 'package:validate_vimeo_url/screen/home_screen.dart';

main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vimeo Player Url Validation',
      home: HomeScreen(),
    );
  }
}