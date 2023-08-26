class ProductModel {
  final bool ok;
  final MetaData metaData;
  final List<ProductData> data;

  ProductModel({required this.ok, required this.metaData, required this.data});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      ok: json['ok'],
      metaData: MetaData.fromJson(json['meta_data']),
      data: List<ProductData>.from(
          json['data'].map((productData) => ProductData.fromJson(productData))),
    );
  }
}

class MetaData {
  final Sort sort;
  final int page;
  final int perPage;
  final List<dynamic> filter;
  final String linkOperator;
  final int total;

  MetaData({
    required this.sort,
    required this.page,
    required this.perPage,
    required this.filter,
    required this.linkOperator,
    required this.total,
  });

  factory MetaData.fromJson(Map<String, dynamic> json) {
    return MetaData(
      sort: Sort.fromJson(json['sort']),
      page: json['page'],
      perPage: json['per_page'],
      filter: json['filter'],
      linkOperator: json['linkOperator'],
      total: json['total'],
    );
  }
}

class Sort {
  final String field;
  final String order;

  Sort({required this.field, required this.order});

  factory Sort.fromJson(Map<String, dynamic> json) {
    return Sort(
      field: json['field'],
      order: json['order'],
    );
  }
}

class ProductData {
  final dynamic bulkDeals;
  final SingleDeal singleDeal;
  final GroupDeal groupDeal;
  final String shortDescription;
  final String longDescription;
  final String primaryImage;
  final List<String> detailImages;
  final List<String> tags;
  final String id;
  final String productStatus;
  final String name;
  final String measuringUnit;
  final int groupCount;
  final String discount;
  final bool favorite;
  final String vendorId;
  final String categoryId;
  final String createdAt;
  final String updatedAt;

  ProductData({
    required this.bulkDeals,
    required this.singleDeal,
    required this.groupDeal,
    required this.shortDescription,
    required this.longDescription,
    required this.primaryImage,
    required this.detailImages,
    required this.tags,
    required this.id,
    required this.productStatus,
    required this.name,
    required this.measuringUnit,
    required this.groupCount,
    required this.discount,
    required this.favorite,
    required this.vendorId,
    required this.categoryId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) {
    return ProductData(
      bulkDeals: json['bulk_deals'],
      singleDeal: SingleDeal.fromJson(json['single_deal']),
      groupDeal: GroupDeal.fromJson(json['group_deal']),
      shortDescription: json['short_description'],
      longDescription: json['long_description'],
      primaryImage: json['primary_image'],
      detailImages: List<String>.from(json['detail_images']),
      tags: List<String>.from(json['tags']),
      id: json['id'],
      productStatus: json['product_status'],
      name: json['name'],
      measuringUnit: json['measuring_unit'],
      groupCount: json['group_count'],
      discount: json['discount'],
      favorite: json['favorite'],
      vendorId: json['vendor_id'],
      categoryId: json['category_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}

class SingleDeal {
  final String originalPrice;
  final int availableQuantity;
  final String id;

  SingleDeal(
      {required this.originalPrice,
      required this.availableQuantity,
      required this.id});

  factory SingleDeal.fromJson(Map<String, dynamic> json) {
    return SingleDeal(
      originalPrice: json['original_price'],
      availableQuantity: json['available_quantity'],
      id: json['id'],
    );
  }
}

class GroupDeal {
  final String groupPrice;
  final int maxGroupMember;
  final int expirationTime;
  final String id;

  GroupDeal(
      {required this.groupPrice,
      required this.maxGroupMember,
      required this.expirationTime,
      required this.id});

  factory GroupDeal.fromJson(Map<String, dynamic> json) {
    return GroupDeal(
      groupPrice: json['group_price'],
      maxGroupMember: json['max_group_member'],
      expirationTime: json['expiration_time'],
      id: json['id'],
    );
  }
}
