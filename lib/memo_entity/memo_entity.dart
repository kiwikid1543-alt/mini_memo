class MemoEntity {
  const MemoEntity({
    required this.title,
    required this.description,
    required this.createdAt,
  });
  //

  final String title;
  final String? description;
  final DateTime createdAt;
}
