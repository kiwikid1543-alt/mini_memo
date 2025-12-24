import 'package:flutter/material.dart';
import 'package:mini_memo/detail_page/detail_page.dart';
import 'package:mini_memo/detail_page/widgets/book_cover_widget.dart';
import 'dart:math';

import 'package:mini_memo/memo_entity/memo_entity.dart';

class BookList extends StatelessWidget {
  const BookList({super.key, required this.memolist});

  final List<MemoEntity> memolist;

  @override
  Widget build(BuildContext context) {
    final List<Color> bookPalette = [
      Colors.red.shade100,
      Colors.amber.shade100,
      Colors.orange.shade100,
      Colors.yellow.shade100,
      Colors.green.shade100,
      Colors.blue.shade100,
      Colors.indigo.shade100,
      Colors.purple.shade100,
      Colors.grey.shade300,
    ];

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: memolist.length,
      itemBuilder: (context, index) {
        final randomColor = bookPalette[Random().nextInt(bookPalette.length)];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    DetailPage(index: index, memolist: memolist),
              ),
            );
            //
          },
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: BookCoverWidget(
              coverColor: randomColor,
              memoList: memolist,
              index: index,
            ),
          ),
        );
      },
    );
  }
}
