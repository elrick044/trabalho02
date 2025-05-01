class ItemModel {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String category;

  ItemModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.category = "",
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      category: json['category'] as String? ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'category': category,
    };
  }

  ItemModel copyWith({
    String? id,
    String? title,
    String? description,
    String? imageUrl,
    String? category,
  }) {
    return ItemModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      category: category ?? this.category,
    );
  }
}