import 'package:flutter/material.dart';

import 'package:apple_store/src/pages/index_page.dart';
import 'package:apple_store/themes/themes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: miTema,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: IndexPage()
      ),
    );
  }
}