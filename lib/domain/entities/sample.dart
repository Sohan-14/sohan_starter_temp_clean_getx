class Sample {

  const Sample({
    required this.id,
    required this.name,
    required this.email,
  });
  final int id;
  final String name;
  final String email;

  @override
  String toString() {
    return 'Sample{id: $id, name: $name}';
  }
}
