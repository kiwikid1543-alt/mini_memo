import 'package:flutter/material.dart';
import 'package:mini_memo/detail_page/view_page.dart';
import 'package:mini_memo/memo_entity/memo_entity.dart';
import 'package:mini_memo/memo_page/write_memo.dart';
import 'package:mini_memo/empty_page/empty_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MemoEntity> memoList = [];

  void onCreate(MemoEntity newMemo) {
    setState(() {
      memoList.add(newMemo);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WriteMemo(onCreate: onCreate),
            ),
          );
        },
        child: Icon(Icons.edit_square),
      ),
      appBar: AppBar(
        title: Text(
          '동 주니어',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          memoList.isEmpty
              ? EmptyPage()
              : Expanded(child: MemoViewPage(memoList: memoList)),
        ],
      ),
    );
  }
}
