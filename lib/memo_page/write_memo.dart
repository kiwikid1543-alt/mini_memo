import 'package:flutter/material.dart';
import 'package:mini_memo/memo_entity/memo_entity.dart';

class WriteMemo extends StatelessWidget {
  const WriteMemo({super.key, required this.onCreate});
  final void Function(MemoEntity) onCreate;

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();

    void onSave() {
      String textValue = titleController.text;
      String descriptionValue = descriptionController.text;

      onCreate(
        MemoEntity(
          title: textValue,
          description: descriptionValue,
          createdAt: DateTime.now(),
        ),
      );
      Navigator.pop(context);
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            controller: titleController,
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
            TextButton(
              onPressed: () {
                onSave();
              },
              child: Text(" 저장"),
            ),
          ],
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: TextField(
                  controller: descriptionController,
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
