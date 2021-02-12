import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:apple_store/src/model/items_model.dart';
import 'package:apple_store/src/pages/index_page.dart';
import 'package:apple_store/themes/themes.dart';

void main() {
  return runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => new ItemsModel())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: miTema,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(body: IndexPage()),
    );
  }
}
