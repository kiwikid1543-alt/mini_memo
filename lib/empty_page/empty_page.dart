import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[100],

          //
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/memo_empty_image.png"),
            Text(
              "새로운 메모를 남겨보세요!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                //
              ),
            ),
            SizedBox(height: 12),
            Text(
              "번뜩이는 아이디어나 할 일을 기록하세요",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                //
              ),
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
