class SampleDto {
  final int id;
  final String name;
  final String email;

  const SampleDto({
    required this.id,
    required this.name,
    required this.email,
  });

  factory SampleDto.fromJson(Map<String, dynamic> json) {
    return SampleDto(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
    };
  }
}
