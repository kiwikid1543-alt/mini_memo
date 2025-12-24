import 'package:flutter/material.dart';
import 'package:mini_memo/detail_page/detail_page.dart';
import 'package:mini_memo/detail_page/widgets/list_item.dart';
import 'package:mini_memo/memo_entity/memo_entity.dart';

class NormalList extends StatelessWidget {
  const NormalList({super.key, required this.memoList});

  final List<MemoEntity> memoList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: memoList.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPage()),
            );
          },
          child: ListItem(memoList: memoList, index: index),
        );
      },
    );
  }
}
