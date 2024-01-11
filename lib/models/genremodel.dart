class GenreModel {
  final String name;
  final int id;

  factory GenreModel.fromJson(Map<String, dynamic> json) {
    return GenreModel(
      id: json['id'],
      name: json['name'],
    );
  }

  GenreModel({required this.name, required this.id});
}
