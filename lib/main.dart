import 'package:flutter/material.dart';

import 'burc_listesi.dart';

void main() {
  runApp(mainApp());
}

class mainApp extends StatelessWidget {
  const mainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: BurcListesi(),
    );
  }
}

