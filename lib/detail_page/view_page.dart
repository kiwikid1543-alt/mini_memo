import 'package:flutter/material.dart';
import 'package:mini_memo/detail_page/widgets/book_list_view.dart';

import 'package:mini_memo/detail_page/widgets/list_view.dart';
import 'package:mini_memo/memo_entity/memo_entity.dart';

class MemoViewPage extends StatefulWidget {
  const MemoViewPage({super.key, required this.memoList});

  final List<MemoEntity> memoList;

  @override
  State<MemoViewPage> createState() => _MemoViewPageState();
}

class _MemoViewPageState extends State<MemoViewPage> {
  bool isBookList = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  isBookList = !isBookList;
                });
              },
              icon: isBookList
                  ? Icon(Icons.book_outlined, size: 32)
                  : Icon(Icons.list, size: 32),
            ),
          ],
        ),
        Expanded(
          child: isBookList
              ? BookList()
              : NormalList(memoList: widget.memoList),
        ),
      ],
    );
  }
}
