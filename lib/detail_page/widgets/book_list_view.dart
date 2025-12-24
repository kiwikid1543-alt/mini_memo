import 'package:flutter/material.dart';
import 'package:mini_memo/detail_page/widgets/book_cover_widget.dart';
import 'dart:math';

class BookList extends StatelessWidget {
  const BookList({super.key});

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
      itemCount: 20,
      itemBuilder: (context, index) {
        final randomColor = bookPalette[Random().nextInt(bookPalette.length)];
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: BookCoverWidget(coverColor: randomColor),
        );
      },
    );
  }
}
