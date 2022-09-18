import 'dart:convert';

BlogList blogListFromJson(String str) => BlogList.fromJson(json.decode(str));

String blogListToJson(BlogList data) => json.encode(data.toJson());

class BlogList {
  BlogList({
   required this.data,
    this.message,
    this.status,
  });

  Data data;
  String? message;
  int? status;

  factory BlogList.fromJson(Map<String, dynamic> json) => BlogList(
    data: Data.fromJson(json["data"]),
    message: json["message"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "message": message,
    "status": status,
  };
}

class Data {
  Data({
  required  this.blogs,
  });

  Blogs blogs;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    blogs: Blogs.fromJson(json["blogs"]),
  );

  Map<String, dynamic> toJson() => {
    "blogs": blogs.toJson(),
  };
}

class Blogs {
  Blogs({
    this.currentPage,
   required this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
  required  this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  int? currentPage;
  List<Datum> data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Link> links;
  dynamic nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  factory Blogs.fromJson(Map<String, dynamic> json) => Blogs(
    currentPage: json["current_page"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    firstPageUrl: json["first_page_url"],
    from: json["from"],
    lastPage: json["last_page"],
    lastPageUrl: json["last_page_url"],
    links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
    nextPageUrl: json["next_page_url"],
    path: json["path"],
    perPage: json["per_page"],
    prevPageUrl: json["prev_page_url"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "first_page_url": firstPageUrl,
    "from": from,
    "last_page": lastPage,
    "last_page_url": lastPageUrl,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
    "next_page_url": nextPageUrl,
    "path": path,
    "per_page": perPage,
    "prev_page_url": prevPageUrl,
    "to": to,
    "total": total,
  };
}

class Datum {
  Datum({
    this.id,
    this.categoryId,
    this.title,
    this.subTitle,
    this.slug,
    this.description,
    this.image,
    this.video,
   required this.date,
    this.status,
    this.createdBy,
    this.updatedBy,
   required this.createdAt,
   required this.updatedAt,
  });

  int? id;
  String? categoryId;
  String? title;
  String? subTitle;
  String? slug;
  String? description;
  dynamic image;
  dynamic video;
  DateTime date;
  String? status;
  String? createdBy;
  String? updatedBy;
  DateTime createdAt;
  DateTime updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    categoryId: json["category_id"],
    title: json["title"],
    subTitle: json["sub_title"],
    slug: json["slug"],
    description: json["description"],
    image: json["image"],
    video: json["video"],
    date: DateTime.parse(json["date"]),
    status: json["status"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "category_id": categoryId,
    "title": title,
    "sub_title": subTitle,
    "slug": slug,
    "description": description,
    "image": image,
    "video": video,
    "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    "status": status,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

class Link {
  Link({
    this.url,
    this.label,
    this.active,
  });

  String? url;
  String? label;
  bool? active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    url: json["url"] == null ? null : json["url"],
    label: json["label"],
    active: json["active"],
  );

  Map<String, dynamic> toJson() => {
    "url": url == null ? null : url,
    "label": label,
    "active": active,
  };
}
