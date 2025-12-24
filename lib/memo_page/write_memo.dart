import 'package:flutter/material.dart';

class WriteMemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "제목",
              hintStyle: TextStyle(),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.import_contacts)),
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            TextButton(onPressed: () {}, child: Text(" 저장")),
          ],
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                  maxLines: null,
                  textAlignVertical: TextAlignVertical.top,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
