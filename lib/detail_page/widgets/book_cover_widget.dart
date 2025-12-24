import 'package:flutter/material.dart';

class BookCoverWidget extends StatelessWidget {
  const BookCoverWidget({super.key, required this.coverColor});

  final Color coverColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 280, // 책 너비
        height: 400, // 책 높이
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
          // 이미지도 컨테이너의 곡률을 따르도록 설정
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
          child: Stack(
            children: [
              // 2. 왼쪽 책등
              Container(
                width: 30,
                decoration: BoxDecoration(color: Colors.black87),
              ),
              // 3. 중앙 텍스트
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text("제목이 들어가는 텍스트", style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
