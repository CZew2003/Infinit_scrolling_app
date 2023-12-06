class ImageClass {
  ImageClass(this.description, this.createdAt, this.smallImage, this.likes, this.account);

  ImageClass.fromJson(Map<String, dynamic> json)
      : description = json['alt_description'] as String,
        createdAt = json['created_at'] as String,
        smallImage = json.cast()['urls']['small'] as String,
        likes = json['likes'] as int,
        account = json['user']['links']['html'] as String;

  final String description;
  final String createdAt;
  final String smallImage;
  final int likes;
  final String account;
}
