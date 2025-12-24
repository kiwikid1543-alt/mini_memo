import 'package:flutter/material.dart';
import 'package:mini_memo/detail_page/view_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [SizedBox(height: 600, child: MemoViewPage())]),
    );
  }
}
