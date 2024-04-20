class BookModel {
  String? id;
  String? title;
  String? author;
  String? description;
  String? publishedAt;
  String? imageLink;

  num? price;

  bool _isInWishList = false;

  BookModel({
    this.id,
    this.title,
    this.author,
    this.description,
    this.publishedAt,
    this.imageLink,
    this.price,
  });

  BookModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    author = json['author'];
    description = json['description'];
    publishedAt = json['published_at'];
    imageLink = json['image_link'];
    price = json['price'];
  }

  BookModel.empty() {
    id = '';
    title = '';
    author = '';
    description = '';
    publishedAt = '';
    imageLink = '';
    price = 0;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['author'] = author;
    data['description'] = description;
    data['published_at'] = publishedAt;
    data['image_link'] = imageLink;
    data['price'] = price;
    return data;
  }

  bool get isInWishList => _isInWishList;

  set isInWishlist(bool value) {
    _isInWishList = value;
  }
}
