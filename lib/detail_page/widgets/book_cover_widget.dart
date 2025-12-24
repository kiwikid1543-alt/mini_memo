import 'package:flutter/material.dart';

class BookCoverWidget extends StatelessWidget {
  const BookCoverWidget({super.key, required this.coverColor});

  final Color coverColor;

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
      ),
    );
  }
}
