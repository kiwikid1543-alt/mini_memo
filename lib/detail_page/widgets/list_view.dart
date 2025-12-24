import 'package:flutter/material.dart';
import 'package:mini_memo/detail_page/widgets/list_item.dart';

class NormalList extends StatelessWidget {
  const NormalList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 10,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        return ListItem();
      },
    );
  }
}
