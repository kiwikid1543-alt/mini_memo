import 'package:flutter/material.dart';
import 'package:mini_memo/memo_entity/memo_entity.dart';

class BookCoverWidget extends StatelessWidget {
  const BookCoverWidget({
    super.key,
    required this.coverColor,
    required this.memoList,
    required this.index,
  });

  final Color coverColor;
  final List<MemoEntity> memoList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 280,
          height: 400,
          decoration: BoxDecoration(
            color: coverColor,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 15,
                offset: const Offset(10, 10),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            child: Stack(
              children: [
                Container(width: 30, color: Colors.black87),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      memoList[index].title,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
