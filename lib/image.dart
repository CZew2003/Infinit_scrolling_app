class ImageClass {
  ImageClass(this.description, this.createdAt, this.smallImage, this.likes, this.account);

  ImageClass.fromJson(Map<String, dynamic> json)
      : description = json['alt_description'] as String,
        createdAt = json['created_at'] as String,
        smallImage = (json['urls'] as Map<String, dynamic>)['small'] as String,
        likes = json['likes'] as int,
        account = ((json['user'] as Map<String, dynamic>)['links'] as Map<String, dynamic>)['html'] as String;

  final String description;
  final String createdAt;
  final String smallImage;
  final int likes;
  final String account;
}
