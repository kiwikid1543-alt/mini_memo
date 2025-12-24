import 'package:flutter/material.dart';
import 'package:mini_memo/memo_entity/memo_entity.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.memolist, required this.index});

  final List<MemoEntity> memolist;
  final int index;

  @override
  Widget build(BuildContext context) {
    final d = memolist[index].createdAt;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. 카테고리나 날짜 표시
            Text(
              "${d.year}.${d.month.toString().padLeft(2, '0')}.${d.day.toString().padLeft(2, '0')}",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 12),

            // 2. 제목
            Text(
              memolist[index].title,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 24),

            // 3. 구분선
            Divider(color: Colors.grey.shade200, thickness: 1),
            const SizedBox(height: 24),

            // 4. 세부 내용
            Text(
              memolist[index].description ?? "",
              style: TextStyle(
                fontSize: 18,
                height: 1.6,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
