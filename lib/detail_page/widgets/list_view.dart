import 'package:flutter/material.dart';
import 'package:mini_memo/detail_page/widgets/book_cover_widget.dart';

class NormalList extends StatelessWidget {
  const NormalList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, _) => const SizedBox(width: 12),
      itemCount: 10,
      itemBuilder: (context, index) {
        return SizedBox(child: BookCoverWidget(coverColor: Colors.white));
      },
    );
  }
}
