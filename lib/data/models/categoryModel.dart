class CategoryModel {
  final bool ok;
  final List<CategoryData> data;

  CategoryModel({required this.ok, required this.data});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      ok: json['ok'],
      data: List<CategoryData>.from(
        json['data'].map((categoryData) => CategoryData.fromJson(categoryData)),
      ),
    );
  }
}

class CategoryData {
  final String name;
  final String shortDescription;
  final String longDescription;
  final String primaryImage;
  final List<String> detailImages;
  final String id;
  final String status;
  final String createdAt;
  final String updatedAt;

  CategoryData({
    required this.name,
    required this.shortDescription,
    required this.longDescription,
    required this.primaryImage,
    required this.detailImages,
    required this.id,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CategoryData.fromJson(Map<String, dynamic> json) {
    return CategoryData(
      name: json['name'],
      shortDescription: json['short_description'],
      longDescription: json['long_description'],
      primaryImage: json['primary_image'],
      detailImages: List<String>.from(json['detail_images']),
      id: json['id'],
      status: json['status'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
