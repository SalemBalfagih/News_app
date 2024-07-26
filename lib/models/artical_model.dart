class ArticalModel {
  final String? image;
  final String tilte;
  final String? description;
  ArticalModel({
    required this.image,
    required this.tilte,
    required this.description,
  });

  factory ArticalModel.fromJson(Map<String, dynamic> json) {
    return ArticalModel(
      image: json["urlToImage"],
      tilte: json["title"],
      description: json["description"],
    );
  }
}
