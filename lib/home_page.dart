import 'package:flutter/material.dart';
import 'package:mini_memo/empty_page/empty_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar 은성
      appBar: AppBar(
        title: Text(
          '동 주니어',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(children: [EmptyPage()]),
    );
  }
}
