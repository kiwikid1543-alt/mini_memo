import 'package:flutter/material.dart';
import 'package:mini_memo/memo_page/write_memo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WriteMemo()),
          );
        },
        child: Icon(Icons.edit_square),
      ),
      body: Column(children: [
        
      ],
    ),
    );
  }
}
