import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),

      child: Column(
        children: [
          Text(
            "📝",
            style: TextStyle(
              fontSize: 50,
              //
            ),
          ),
          Text(
            "메모없음",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 50,
              fontWeight: FontWeight.w500,
              //
            ),
          ),
        ],
      ),
    );
  }
}
